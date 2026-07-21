#!/bin/bash
set -eu

# ponytail: guard na soubor, ne `command -v sdk` — sdk je shell funkce, ne binárka
[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ] && exit 0

# rcupdate=false: .bashrc spravuje chezmoi a init si volá sám
# ci=true: neinteraktivní, ať to projde i přes ssh bez tty
curl -fsSL "https://get.sdkman.io?ci=true&rcupdate=false" | bash
