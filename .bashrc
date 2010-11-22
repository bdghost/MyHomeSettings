# Check for an interactive session
[ -z "$PS1" ] && return

PS1='[\[\033[0;34m\]\u\[\033[0;35m\]@\[\033[0;33m\]\w\[\033[00m\]]$ '
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
#export XIM_PROGRAM=/usr/bin/ibus-daemon
#export XIM=ibus
#export XMODIFIERS="@im=ibus"
export XIM_PROGRAM=/usr/bin/fcitx
export XIM=fcitx
export XMODIFIERS="@im=fcitx"
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
alias pc="proxychains"
alias gap="~/Dropbox/Source/gappproxy-1.0.0beta/localproxy/proxy.py"
alias rd="~/Scripts/rdesktop.sh"
export MOZ_DISABLE_PANGO=1
export PATH="/usr/lib/ccache/bin/:$PATH"
complete -cf sudo
