#!/usr/bin/env bash
set -e

# install dependencies
sudo dnf install python3-pip awscli # Installs botocore
pip3 install aws-rotate

# Move Files
mkdir --parents ~/.config/systemd/user
cp aws-key-rotate.* ~/.config/systemd/user

# Enable Service
systemctl --user enable --now aws-key-rotate.timer

# Post Message
printf "%s\n" "View the status of the rotate cron with: 'systemctl --user status aws-key-rotate.timer or 'systemctl --user status aws-key-rotate.service'"
