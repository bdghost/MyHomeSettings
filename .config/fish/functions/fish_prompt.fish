function parse_git_dirty 
    git diff --quiet HEAD ^&-
    if test $status = 1
        echo (set_color $fish_color_branch_dirty)"Δ"
    end
end

function parse_git_branch
    # git branch outputs lines, the current branch is prefixed with a *
    set -l branch (git branch ^&- | awk '/*/ {print $2}') 
    printf "%s<%s %s%s>" (set_color $fish_color_branch) $branch (parse_git_dirty) (set_color $fish_color_branch)
end

function parse_root
    if test $USER = "root"
        echo (set_color $fish_color_root)"#"(set_color normal)
    else
        echo (set_color normal)'$'
    end
end

function fish_prompt
    if test -z (git branch --quiet 2>| awk '/fatal:/ {print "no git"}')
        printf '%s%s %s %s ' (set_color $fish_color_cwd) (prompt_pwd) (parse_git_branch) (parse_root)
    else
        printf '%s%s %s ' (set_color $fish_color_cwd) (prompt_pwd) (parse_root)
    end 
end

# printf '%s@%s %s%s%s (%s) $ ' (whoami) (hostname|cut -d . -f 1) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) (parse_git_branch)

# vim:ts=4:sw=4:et:ft=fish:
