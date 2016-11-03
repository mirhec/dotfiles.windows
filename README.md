# Setup Fedora server after clean install

Tested with Fedora 22 and above.
A description of the Variables used in this guide can be found at the bottom.

## On the server

Log in as root user.

### STEP 1: Creating your admins user account and add it to the sudoers group

If you already created an user account for the admin, skip this step.
Otherwise create your admins user account:

    adduser <SERVER_USERNAME>
    passwd <SERVER_USERNAME>
    gpasswd wheel -a <SERVER_USERNAME>

### STEP 2: Install the most important tools

    dnf install git vim tmux fish

### STEP 3: Clone the dotfiles from these reporitory

    git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    ~/.homesick/repos/homeshick/bin/homeshick clone mamiu/dotfiles

### STEP 4: Setup fish as login shell

    lchsh
        New Shell [/bin/bash]: /usr/bin/fish

### STEP 5: Login to your admins user account

    su - <SERVER_USERNAME>

### STEP 6: Configure git

    git config --global user.name "<FIRST_NAME> <LAST_NAME>"
    git config --global user.email "<EMAIL_ADDRESS>"

### STEP 7: Clone the dotfiles from these reporitory

    git clone https://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    ~/.homesick/repos/homeshick/bin/homeshick clone mamiu/dotfiles
    
### STEP 8: Setup fish as login shell

    sudo lchsh <SERVER_USERNAME>
        New Shell [/bin/bash]: /usr/bin/fish

<br>  

## On the client:

### STEP 1: Setup ssh config to login easily with `ssh <SERVER_SHORTNAME>`

Insert following four lines in `~/.ssh/config` on the host:

    Host <SERVER_SHORTNAME>
        USER <SERVER_USERNAME>
        HostName <SERVER_HOSTNAME>
        SendEnv TMUX_AUTOSTART

### STEP 2: Add clients public key to your servers athorized keys

This step will enable you to ssh into your server without passphrase.

If you have the `ssh-copy-id` command on your client it's only:

    ssh-copy-id <SERVER_SHORTNAME>

Otherwise you have to call:

    cat ~/.ssh/id_rsa.pub | ssh <SERVER_SHORTNAME> "mkdir -p ~/.ssh; and cat >> .ssh/authorized_keys"

<br>

## Extras

### To start tmux automatically after login add following line to `/etc/ssh/sshd_config`:

    AcceptEnv TMUX_AUTOSTART

<br>
<br>

## Variables in this guide

    <SERVER_HOSTNAME>   = servers hostname or IP address
    <SERVER_SHORTNAME>  = an abbreviation/short name for the server
    <SERVER_USERNAME>   = the admins username on the server (not root)
    <FIRST_NAME>        = admins first name
    <LAST_NAME>         = admins last name
    <EMAIL_ADDRESS>     = admins email address

