
if status --is-login

    # Set fish config directory
    set -gx FISH $HOME/.config/fish

    set -gx LANG zh_CN.utf8
    set fish_greeting

    # Default universal variables
    . $FISH/universal.fish

    # Initialize the environment
    . $FISH/initenv.fish

    if test (tty) == /dev/tty1
        exec startx
    end
end

# vim:ts=4:sw=4:et:ft=fish:
