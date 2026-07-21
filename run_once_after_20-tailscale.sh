#!/bin/bash
set -eu

command -v tailscale >/dev/null || curl -fsSL https://tailscale.com/install.sh | sh

sudo systemctl enable --now tailscaled

# ponytail: přihlášení ručně, auth key do repa nepatří
tailscale status >/dev/null 2>&1 || echo "==> ještě spusť: sudo tailscale up"