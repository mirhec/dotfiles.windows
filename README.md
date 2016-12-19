# Setup dotfiles for Ubuntu subsystem in Windows 10

#### STEP 1: Install dependencies
 - You should set another font for your console as described [here](http://www.hanselman.com/blog/UsingConsolasAsTheWindowsConsoleFont.aspx)
```bash
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish vim -y
```

#### STEP 2: Install Linuxbrew and tmux (actual version)
```bash
git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
brew install tmux
```

#### STEP 2: Clone the dotfiles from these reporitory

```bash
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles.windows
source ~/.bashrc
```

#### STEP 3: Set fish as default shell
 - Just uncomment the last two lines of `.bashrc`

#### Then log out and log in again to apply the changes
