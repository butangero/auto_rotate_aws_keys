# Aws Auto Rotate With Systemd

Assumptions:
- Running a linux system with Systemd version >=220
- Aws CLI and Botocore dependencies installed
- Aws credentials setup and initialized
- aws-rotate installed via pip

To Install:
1. Create the `~/.config/systemd/user` directory
2. Copy the `service` and `timer` files to the created directory
3. Run the following command: `systemctl --user enable --now aws-key-rotate.timer`
