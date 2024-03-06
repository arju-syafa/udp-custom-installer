#!/bin/bash

mkdir -p /root/udp

# install udp-custom
echo downloading udp-custom
wget --no-check-certificate "https://raw.githubusercontent.com/arju-syafa/udp-custom-installer/529-aarch64/udp-custom-linux-aarch64" -O /root/udp/udp-custom &>/dev/null
if [ -f /root/udp/udp-custom ]; then
  chmod +x /root/udp/udp-custom
else
  curl -o /root/udp/udp-custom "https://raw.githubusercontent.com/arju-syafa/udp-custom-installer/529-aarch64/udp-custom-linux-aarch64"
fi
chmod +x /root/udp/udp-custom

echo downloading default config
wget --no-check-certificate "https://raw.githubusercontent.com/arju-syafa/udp-custom-installer/529-aarch64/config.json" -O /root/udp/config.json &>/dev/null
if [ -f /root/udp/config.json ]; then
  chmod 644 /root/udp/config.json
else
  curl -o /root/udp/config.json "https://raw.githubusercontent.com/arju-syafa/udp-custom-installer/529-aarch64/config.json"
fi
chmod 644 /root/udp/config.json

if [ -z "$1" ]; then
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=UDP Custom by ePro Dev. Team

[Service]
User=root
Type=simple
ExecStart=/root/udp/udp-custom server
WorkingDirectory=/root/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
else
cat <<EOF > /etc/systemd/system/udp-custom.service
[Unit]
Description=UDP Custom by ePro Dev. Team

[Service]
User=root
Type=simple
ExecStart=/root/udp/udp-custom server -exclude $1
WorkingDirectory=/root/udp/
Restart=always
RestartSec=2s

[Install]
WantedBy=default.target
EOF
fi

echo start service udp-custom
systemctl start udp-custom &>/dev/null

echo enable service udp-custom
systemctl enable udp-custom &>/dev/null

echo reboot
reboot