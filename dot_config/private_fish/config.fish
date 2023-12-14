set -g fish_greeting

fish_add_path $HOME/.local/bin/
fish_add_path $HOME/.cargo/bin/
fish_add_path $HOME/.fzf/bin/
fish_add_path /usr/local/lib/npm/bin/

set --universal pure_shorten_prompt_current_directory_length 1
set --universal pure_enable_single_line_prompt true

set -Ux EDITOR nvim

abbr --add czcd cd (chezmoi source-path)
abbr --add czed chezmoi edit
abbr --add czap chezmoi apply
abbr --add czdf chezmoi diff
abbr --add czad chezmoi add

abbr --add ls eza --icons

abbr --add lg lazygit

abbr --add tinker php artisan tinker
abbr --add artisan php artisan

fish_config theme choose "Catppuccin Mocha"

if status is-interactive
    # Commands to run in interactive sessions can go here
end