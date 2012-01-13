
if status --is-login

    # Set fish config directory
    set -gx FISH $HOME/.config/fish
    set -gx LANG zh_CN.utf8

    # Default universal variables
    . $FISH/universal.fish

    # Initialize the environment
    . $FISH/initenv.fish

end

# vim:ts=4:sw=4:et:ft=fish:
