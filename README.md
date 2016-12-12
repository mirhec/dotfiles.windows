# Setup dotfiles on Uberspace

#### STEP 1: Login to your server

#### STEP 2: Install fish shell

    curl -L https://goo.gl/c5fwRo | bash

#### STEP 3: Clone the dotfiles from these reporitory

    git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    ~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles

#### STEP 4: Configure git

    git config --global user.name "<FIRST_NAME> <LAST_NAME>"
    git config --global user.email "<EMAIL_ADDRESS>"

#### To start tmux automatically after login add following line to `/etc/ssh/sshd_config`:

    AcceptEnv TMUX_AUTOSTART
