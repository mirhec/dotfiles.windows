# Setup dotfiles on Uberspace or MacOS or Ubuntu for Windows

## Setup for Uberspace

#### STEP 1: Login to your server

#### STEP 2: Clone the dotfiles from these reporitory

```bash
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles
source ~/.bashrc
```

#### STEP 3: Install Linuxbrew and fish
```bash
git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew

# symlinks to gcc in order to make brew install able to compile from source
ln -s /package/host/localhost/gcc-4.9/bin/gcc ~/.linuxbrew/bin/gcc-4.9
ln -s /package/host/localhost/gcc-4.9/bin/g++ ~/.linuxbrew/bin/g++-4.9

# install fish with brew
brew install fish
```

#### Then log out and log in again to apply the changes

## Setup for MacOS

#### STEP 1: Clone the dotfiles from these reporitory

```bash
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles
source ~/.bashrc
```

#### STEP 2: Install Linuxbrew and fish
```bash
# if you haven't installed homebrew yet, do it ...
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install fish with brew
brew install fish
```

#### STEP 3: Set fish as default shell (only for MacOS and Fedora)
```bash
# check if /usr/local/bin/fish exists in /etc/shells, otherwise add it
chsh -s /usr/local/bin/fish
```

#### Then log out and log in again to apply the changes

## Setup for Ubuntu for Windows

#### STEP 1: Install dependencies
```bash
apt-get install fish vim -y
```

#### STEP 2: Clone the dotfiles from these reporitory

```bash
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles
source ~/.bashrc
```

#### STEP 3: Set fish as default shell (only for MacOS and Fedora)
```bash
# check if /usr/bin/fish exists in /etc/shells, otherwise add it
chsh -s /usr/bin/fish
```

#### Then log out and log in again to apply the changes
