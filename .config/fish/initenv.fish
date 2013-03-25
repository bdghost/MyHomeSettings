
# Set system path
set -x PATH /usr/lib/ccache/bin $HOME/Scripts $HOME/.gem/ruby/2.0.0/bin /bin /usr/bin /sbin /usr/sbin /usr/bin/vendor_perl /usr/bin/core_perl

set -x CDPATH . ~

set -x Automoc4_DIR /usr/lib/automoc4

# Unset bad variables
set -e TERMCAP
set -e MANPATH

# Set good variables
set -x HOSTNAME (hostname)
set -x UID (id -u)

# Set legacy variables
set -x OSTYPE (uname -o)
set -x MACHTYPE (uname -m)

# Source include (profile) scripts
for s in $FISH/include/*.fish
    . $s
end

# vim:ts=4:sw=4:et:ft=fish:
