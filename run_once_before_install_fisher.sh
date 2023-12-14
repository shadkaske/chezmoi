#!/usr/bin/env fish

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source

fisher install pure-fish/pure

fisher install catppuccin/fish

fish_config theme choose "Catppuccin Mocha"
