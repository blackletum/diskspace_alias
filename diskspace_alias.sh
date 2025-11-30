#!/bin/bash

BASHRC="$HOME/.bashrc"

# Check if alias already exists
if grep -q "diskspace()" "$BASHRC"; then
    echo "diskspace() already exists in .bashrc - no changes made."
    exit 0
fi

# Add function to bashrc
echo "" >> "$BASHRC"
echo "# Disk space shortcut" >> "$BASHRC"
echo "diskspace() {" >> "$BASHRC"
echo '    echo -e "\e[1;36mRunning df -h\e[0m"' >> "$BASHRC"
echo "    df -h" >> "$BASHRC"
echo "}" >> "$BASHRC"

# Reload bashrc
source "$BASHRC"

echo -e "\e[1;32m✔ diskspace command added!\e[0m"    # Green
echo -e "Run this to apply changes:"
echo -e "  \e[1;36msource ~/.bashrc\e[0m"            # Cyan
echo -e "Then try the command: \e[1;36m[diskspace]\e[0m"
echo -e "To remove the alias, please run:"
echo -e "  \e[1;36mnano ~/.bashrc\e[0m"
echo -e "\e[1;33mand delete manually, bc idk how to do that"
echo -e "\e[1;33mautomated without breaking things lmao\e[0m"  # Yellow