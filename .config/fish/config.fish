fish_add_path -p ~/.juliaup/bin ~/.cargo/bin ~/.local/bin /usr/local/sbin /usr/local/bin /usr/bin

set -e TERMCAP
set -e MANPATH
set -Ux STARSHIP_CONFIG ~/.config/starship/starship.toml

source ~/.config/fish/colors.fish

pyenv init - | source
zoxide init fish | source
starship init fish | source

function starship_transient_prompt_func
    set --local -x STARSHIP_CONFIG ~/.config/starship/transient.toml
    starship module character
end

function xcd
    set --local result (command xplr $argv)
    [ -n "$result" ] && cd "$result"
end

if status is-interactive
    alias ls='eza -w 80 --icons'
    alias cd='z'
    alias grep='grep --color=auto'
    alias nv=nvim
    alias lg=lazygit

    fish_vi_key_bindings
    enable_transience
end
