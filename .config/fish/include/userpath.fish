
for p in $HOME/Dropbox/Scripts $HOME/.gem/ruby/1.9.1/bin
    if not [ -d $p ] continue; end
    if not contains $p $PATH
        set PATH $p $PATH
    end
end

# vim:ts=4:sw=4:et:ft=fish:
