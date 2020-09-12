#!/bin/bash

echo "'modernutils' is a meta-installer for common Unix utilities. See https://webinstall.dev/modernutils"
WEBI_HOST=${WEBI_HOST:-"https://webinstall.dev"}
PATH="$HOME/.local/opt/node/bin:$HOME/.local/bin:$PATH"
webi bat curlie fd fzf jq lsd rg sd node ssh-pubkey
