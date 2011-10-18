
if [ -d /usr/lib/ccache/bin ]
    set PATH /usr/lib/ccache/bin $PATH
    set -x USE_CCACHE 1
end

# vim:ts=4:sw=4:et:ft=fish:
