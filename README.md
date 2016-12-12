# Setup dotfiles on Uberspace

#### STEP 1: Login to your server

#### STEP 2: Install Linuxbrew and fish

    git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
    
    # symlinks to gcc in order to make brew install able to compile from source
    ln -s /package/host/localhost/gcc-4.9/bin/gcc ~/.linuxbrew/bin/gcc-4.9
    ln -s /package/host/localhost/gcc-4.9/bin/g++ ~/.linuxbrew/bin/g++-4.9
    
    # install fish with brew
    brew install fish

#### STEP 3: Clone the dotfiles from these reporitory

    git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    ~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles

#### STEP 4: Install fish shell as default shell

    echo -e "\n# use fish as login shell\n[ -f $(which fish) ] && exec $(which fish) -l" >> ~/.bash_profile

#### STEP 5: Configure git

    git config --global user.name "<FIRST_NAME> <LAST_NAME>"
    git config --global user.email "<EMAIL_ADDRESS>"

#### To start tmux automatically after login add following line to `/etc/ssh/sshd_config`:

    AcceptEnv TMUX_AUTOSTART
