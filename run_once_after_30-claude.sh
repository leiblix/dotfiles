#!/bin/bash
set -eu

# ponytail: nativní installer, žádný node/npm; binárka do ~/.local/bin, bez sudo
command -v claude >/dev/null || curl -fsSL https://claude.ai/install.sh | bash -s stable