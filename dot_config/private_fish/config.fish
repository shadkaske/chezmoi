set -g fish_greeting

fish_add_path $HOME/.local/bin/
fish_add_path $HOME/.cargo/bin/
fish_add_path $HOME/.fzf/bin/

set --universal pure_shorten_prompt_current_directory_length 1
set --universal pure_enable_single_line_prompt true

set -Ux EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end
