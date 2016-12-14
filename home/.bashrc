# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$HOME/.homesick/repos/homeshick/bin:$PATH"
MANPATH=":$HOME/.linuxbrew/share/man:$MANPATH"
INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# fix for ssh-agent problem with tmux
# @see https://robinwinslow.uk/2012/07/20/tmux-and-ssh-auto-login-with-ssh-agent-finally/
if [ -z "$TMUX" ]; then
    # we're not in a tmux session
	# if ssh auth variable is missing
	if [ -z "$SSH_AUTH_SOCK" ]; then
	    export SSH_AUTH_SOCK="$HOME/.ssh/.auth_socket"
	fi

	# if socket is available create the new auth session
	if [ ! -S "$SSH_AUTH_SOCK" ]; then
	    `ssh-agent -a $SSH_AUTH_SOCK` > /dev/null 2>&1
	    echo $SSH_AGENT_PID > $HOME/.ssh/.auth_pid
	fi

	# if agent isn't defined, recreate it from pid file
	if [ -z $SSH_AGENT_PID ]; then
	    export SSH_AGENT_PID=`cat $HOME/.ssh/.auth_pid`
	fi

	# Add all default keys to ssh auth
	ssh-add 2>/dev/null

	# start tmux
	tmux attach
fi

# # Autostart workaround for windows
# fish -l
# exit
