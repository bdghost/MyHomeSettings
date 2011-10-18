
complete -c makepkg -f -s b -l builddeps -d 'Build missing deps from source'
complete -c makepkg -f -s c -l clean -d 'Clean left work files and dirs'
complete -c makepkg -f -s C -l cleancache -d 'Removed all cached work files'
complete -c makepkg -f -s d -l nodeps -d 'Do not check deps'
complete -c makepkg -f -s e -l noextract -d 'Do not extract source files'
complete -c makepkg -f -s f -l force -d 'Force rebuild of the package'
complete -c makepkg -f -s g -l geninteg -d 'Generate integrity checks'
complete -c makepkg -f -s h -l help -d 'Output syntax and options'
complete -c makepkg -f -s i -l install -d 'Install or upgrade the built package with pacman'
complete -c makepkg -f -s m -l nocolor -d 'Disable colors'
complete -c makepkg -f -s o -l nobuild -d 'Download and extract the sources only'
complete -c makepkg -s p -d 'Use alternative build script'
complete -c makepkg -f -s r -l rmdeps -d 'Removed installed deps after build'
complete -c makepkg -f -s R -l repackage -d 'Repackage without rebuilding'
complete -c makepkg -f -s s -l syncdeps -d 'Install deps with pacman'
complete -c makepkg -f -s S -l usesudo -d 'Use sudo for pacman operations'
complete -c makepkg -f -l noprogressbar -d 'Tell pacman to not display a progressbar'
complete -c makepkg -f -l noconfirm -d 'Prevent pacman from making questions'
complete -c makepkg -f -l source -d 'Build a source-only tarball for AUR upload'

