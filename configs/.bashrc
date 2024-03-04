# If not running interactively, don't do anything
[[ $- == *i* ]] || return

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#_______________________vars for command line
export GURL="https://github.com/surbhitt/"
# Set the TERM variable to xterm-256color
export TERM=xterm-256color
export PODS="18:95:52:78:67:37"

#_______________________aliases
# Enable 256-color mode for tmux
alias vim='nvim'
alias python='python3'
alias tmux='tmux -2'
alias ls="ls -lA --color"
alias qbt="~/Programs/squashfs-root/AppRun &"
alias naut="nautilus &"
alias p="cd ~/Desktop/proj/"
alias code="codium"
alias logout="i3-msg exit" #"sudo pkill -u subzero"
alias srcb="source ~/.bashrc"
alias cleanup="rm *.tmpp"
alias idea="~/idea-IC-233.14015.106/bin/idea.sh &"
# create a dir and cd to it
mkdv() { mkdir $1 && cd $1; }
# not needed cause symbolic link created
# for codeforces setup a dir for the contest
# comp() {
#     echo "[+] Setting up env"
#     ~/.scripts/cp.sh $*
# }

# Powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi

# on startup
echo "butTterFlie ^~^"
source ~/.bash/themes/aphrodite/aphrodite.theme.sh



# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
