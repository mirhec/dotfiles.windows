# THINGS TO DO AT FISH INIT
set TERM xterm-256color
set PATH ~/bin $PATH
set -x EDITOR vim
set -x LC_ALL en_US.utf-8
set -x LANG en_US.utf-8
set -x GOPATH $HOME/dev/go-workspace

source $HOME/.config/fish/fish_user_key_bindings.fish
source $HOME/.config/fish/.promptline.fish
source $HOME/.homesick/repos/homeshick/homeshick.fish
source $HOME/.homesick/repos/homeshick/completions/homeshick.fish

set --erase fish_greeting

if test "$TMUX_AUTOSTART" = "true"
    if status --is-login
        if test -z "$TMUX"
            tmux attach >/dev/null ^&1; or tmux; and kill %self
        end
    end
end

# SELF DEFINED FUNCTIONS
#function cd -d "follow symlinks with cd (e.g. cd symlink --> goto directory, where the symlinks target is stored)"
#    if begin; test -n "$argv"; and test (count "$argv") -eq 1; and test -L "$argv"; end
#        builtin cd (dirname (readlink "$argv"))
#    else
#        builtin cd $argv
#    end
#end

# # WINDOWS WORKAROUND
function x86
    echo '(x86)'
end
function X86
    echo '(X86)'
end

# ALIASES
alias ack="command ack --pager='less -R'"
alias ls="ls -h --group-directories-first --color"
alias la="ls -lah --group-directories-first --color"
alias tmux0="tmux attach -t0"
#alias mount-server="sudo mount -o rw,bg,hard,resvport,intr,noac,nfc,tcp 20.4.91.100:/mnt/disk1 /media/server"
# macOS fix for ls switches
#alias ls="ls -hG"
#alias la="ls -lahG"
