# Set required universal variables with a default value

# Custom script directory
if not set -q fish_script_dir
    set -U fish_script_dir $FISH/scripts
end

# vim:ts=4:sw=4:et:ft=fish:
