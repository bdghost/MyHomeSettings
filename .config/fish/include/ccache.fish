
if [ -d /usr/lib/ccache/bin ]
    set -x USE_CCACHE 1
    set -x CCACHE_PATH /usr/bin
end

# vim:ts=4:sw=4:et:ft=fish:
