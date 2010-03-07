PS1='[\[\033[0;34m\]\u\[\033[0;35m\]@\[\033[0;33m\]\w\[\033[00m\]]$ '
#export LC_ALL=ja_JP.utf8
#export LC_LANG=ja_JP.utf8
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XIM_PROGRAM=/usr/bin/ibus-daemon
export XIM=ibus
export XMODIFIERS="@im=ibus"
export EDITOR=vim
alias diff='colordiff'
alias ls='ls --color=auto'
alias y="yaourt"
alias ys="yaourt -S"
alias yss="yaourt -Ss"
alias yu="yaourt -U"
alias yr="yaourt -Rs"
alias ysu="yaourt -Su"
alias ysyu="yaourt -Syu"
alias ll="ls -lh"
alias la="ls -a"
alias gap="~/Dropbox/Source/gappproxy-1.0.0beta/localproxy/proxy.py"
alias rd="~/Scripts/rdesktop.sh"
complete -cf sudo
