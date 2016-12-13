# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# use fish as login shell
[ -f $HOME/.linuxbrew/bin/fish ] && exec $HOME/.linuxbrew/bin/fish -l
[ -f /usr/local/bin/fish ] && exec /usr/local/bin/fish -l
