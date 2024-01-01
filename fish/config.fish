fish_add_path -p /usr/local/sbin /usr/local/bin /usr/bin

set -e TERMCAP
set -e MANPATH

pyenv init - | source
zoxide init fish | source
starship init fish | source

function xcd
    set --local result (command xplr $argv)
    [ -n "$result" ] && cd "$result"
end

if status is-interactive
    alias ls='eza'
    alias cd='z'
    alias grep='grep --color=auto'
    alias nv=nvim

    fish_add_path -p ~/.cargo/bin ~/.local/bin
    fish_vi_key_bindings
    enable_transience
    pfetch
end
