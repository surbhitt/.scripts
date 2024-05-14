
# SETUP

- Install
    
    i3
    [brave](https://brave.com/linux/)
    alacritty
    zsh (omz)
    nvim (latest 9+)
    vscodium
    pycharm
    tmux 
    dunst
    picom
    feh
    bumbleebee-status
    flameshot
    mpv
    cmus
    slack

    font:   space mono
            fontawesome 
    cursor: numix

- Link configs
    
    **in** ~/.config
    `$ ln -s link_of link_name`
    **for** 
    alacritty, dunst, i3, nvim, picom, tmux
    **eg.**
    `nvim -> ../.scripts/configs/nvim`

    **in** ~
    **for**
    .zshrc, .bashrc, .clang-format

- [i3](https://i3wm.org/downloads/)

    `$ sudo dnf install i3`
    reboot and login into i3
    accept the prompt for creating a scratc i3 config(just to see the default location for it)

    => GET THE TOUCHPAD WORKING

- zsh 
    
    `$ sudo dnf install zsh`
    theme: [aphrodite](https://github.com/win0err/aphrodite-terminal-theme)

- nvim

    `$ sudo dnf install neovim`
    1. in config go to lua/myconf/packer.lua
    2. :so
    3. :PackerSync
    4. :TSInstall
    5. :Mason
    

# BACKUP

- Brave pass and bookmarks
- Downloads folder
- .scripts
- Apps

# OS

Fedora spin i3/sway/xfce/lxde/lxqt
Manjaro i3/xfce/sway (arch)
Linux mint xfce (deb)
EndevourOS i3/xfce (arch)
ElementaryOS (deb)

