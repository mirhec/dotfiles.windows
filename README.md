# Setup dotfiles on Uberspace or MacOS or Fedora

#### STEP 1: Login to your server

#### STEP 2: Install dependencies (only for Fedora)
```bash
# execute these commands as sudo
dnf remove vim-minimal
dnf install git vim tmux fish
```

#### STEP 3: Clone the dotfiles from these reporitory

```bash
    git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    ~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles
    source ~/.bashrc
```

#### STEP 4: Install Linuxbrew and fish (only for MacOS and Uberspace)
```bash
    ## The following commands are only needed for Uberspace
        git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
    
        # symlinks to gcc in order to make brew install able to compile from source
        ln -s /package/host/localhost/gcc-4.9/bin/gcc ~/.linuxbrew/bin/gcc-4.9
        ln -s /package/host/localhost/gcc-4.9/bin/g++ ~/.linuxbrew/bin/g++-4.9
    
    ## For MacOS install homebrew first
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
    # install fish with brew
    brew install fish
```

#### STEP 4 (only for MacOS and Fedora): Set fish as default shell
```bash
    # check if /usr/local/bin/fish exists in /etc/shells, otherwise add it
    chsh -s /usr/local/bin/fish
```

#### Then log out and log in again to apply the changes
