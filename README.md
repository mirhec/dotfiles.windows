# Setup dotfiles for Ubuntu subsystem in Windows 10

#### STEP 0: Fix Problems with WSL
- If your `sudo` command takes a long time and ends up with the error message `unable to resolve host ...` you need to enter your host into /etc/hosts: `127.0.0.7 YOURHOSTNAME`
- If you can't connect to the internet (`sudo apt-get update` fails) you should try to connect to another network card

#### STEP 1: Install dependencies
 - You should set another font for your console as described [here](http://www.hanselman.com/blog/UsingConsolasAsTheWindowsConsoleFont.aspx)
```bash
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish vim git -y
```


#### STEP 2: Clone the dotfiles from these reporitory
```bash
git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
~/.homesick/repos/homeshick/bin/homeshick clone mirhec/dotfiles.windows
source ~/.bashrc
```

#### Then log out and log in again to apply the changes
