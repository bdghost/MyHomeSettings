
if status --is-login

    # Set fish config directory
    set -gx FISH $HOME/.config/fish

    # Default universal variables
    . $FISH/universal.fish

    # Initialize the environment
    . $FISH/initenv.fish

    xrdb -merge ~/.Xresources &
    xcompmgr -c &
    urxvtd -q -f -o &
    fcitx &
    exec awesome

end

# vim:ts=4:sw=4:et:ft=fish:
