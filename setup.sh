#!/bin/bash

# Jupiter PM Skills — Setup & Update
#
# Run this once on a new machine, and again every time you get a Slack
# notification that the plugin has been updated.
#
# What it does:
#   1. Installs (or updates) all pm-superic-skills plugins
#   2. Creates a stable symlink at ~/.claude/jupiter-pm/ pointing to the
#      current plugin install so that CLAUDE.md bindings never break
#   3. Adds the Jupiter context binding to ~/.claude/CLAUDE.md on first run

set -e

PLUGINS_JSON="$HOME/.claude/plugins/installed_plugins.json"
SYMLINK="$HOME/.claude/jupiter-pm"
CLAUDE_MD="$HOME/.claude/CLAUDE.md"
MARKER="## Jupiter PM context (auto-managed by setup.sh)"

echo ""
echo "Jupiter PM Skills — Setup"
echo "========================="
echo ""

# ── Step 1: Install / update plugins ─────────────────────────────────────────

echo "Installing plugins..."
claude plugin install pm-toolkit@pm-superic-skills
claude plugin install pm-product-strategy@pm-superic-skills
claude plugin install pm-product-discovery@pm-superic-skills
claude plugin install pm-market-research@pm-superic-skills
claude plugin install pm-data-analytics@pm-superic-skills
claude plugin install pm-marketing-growth@pm-superic-skills
claude plugin install pm-go-to-market@pm-superic-skills
claude plugin install pm-execution@pm-superic-skills
claude plugin install pm-project-management@pm-superic-skills
echo "Plugins installed."
echo ""

# ── Step 2: Resolve current install path for pm-execution ────────────────────

INSTALL_PATH=$(python3 - <<'EOF'
import json, sys
try:
    with open("$HOME/.claude/plugins/installed_plugins.json".replace("$HOME", __import__('os').path.expanduser("~"))) as f:
        data = json.load(f)
    for name, installs in data.get("plugins", {}).items():
        if "pm-execution" in name:
            print(installs[0]["installPath"])
            sys.exit(0)
    print("NOT_FOUND")
except Exception as e:
    print("NOT_FOUND")
EOF
)

if [ "$INSTALL_PATH" = "NOT_FOUND" ] || [ -z "$INSTALL_PATH" ]; then
    echo "Warning: could not locate pm-execution install path."
    echo "Jupiter context will load from skill relevance detection only."
    echo ""
else
    # ── Step 3: Update symlink to current version ─────────────────────────────

    ln -sfn "$INSTALL_PATH" "$SYMLINK"
    echo "Symlink updated: $SYMLINK → $INSTALL_PATH"
    echo ""

    # ── Step 4: Add CLAUDE.md binding on first run only ───────────────────────

    if ! grep -q "$MARKER" "$CLAUDE_MD" 2>/dev/null; then
        cat >> "$CLAUDE_MD" <<BLOCK

$MARKER
# This block is written once by setup.sh. The symlink it references is
# updated on every setup.sh run, so the binding stays current automatically.

### Jupiter PM context
Applies to all PM work at Jupiter Money (PRDs, Jira, OKRs, planning, stakeholder updates):
- Load \`$SYMLINK/skills/jupiter-context/SKILL.md\` — org structure, Jira boards, engineering contacts, OKR conventions, skill calibrations

BLOCK
        echo "CLAUDE.md updated — Jupiter context will now load at session start."
    else
        echo "CLAUDE.md already configured — no changes needed."
    fi
fi

# ── Step 5: Check for personal voice config ───────────────────────────────────

VOICE_DNA="$HOME/.claude/configs/writing/voice-dna.md"
if [ -f "$VOICE_DNA" ]; then
    echo "Personal voice config found."
else
    echo "No personal voice config found at $VOICE_DNA"
    echo "  Optional: ask Abhishek for the voice-dna template."
fi

echo ""
echo "Setup complete. Jupiter context loads at the start of every session."
echo ""
echo "To update after a Slack notification:"
echo "  bash setup.sh"
echo ""
