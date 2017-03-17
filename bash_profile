RED="\[\033[0;31m\]"

git_branch () {
    if git rev-parse --git-dir >/dev/null 2>&1
        then echo -e "" \($(git branch 2>/dev/null| grep -e ^* | sed -n '/^\*/s/^\* //p')\)
    else
        echo ""
    fi
}

function git_color {
    local STATUS=`git status 2>&1`

    if [[ "$STATUS" == *'Not a git repository'* ]]; then
        echo ""
    else
        if [[ "$STATUS" == *'Changes not staged for commit'* ]] || [[ "$STATUS" == *'You have unmerged paths'* ]]; then
            # red if need to commit
            echo -e '\033[0;31m'
        else
            if [[ "$STATUS" == *'Your branch is ahead'* ]]; then
                # yellow if need to push
                echo -e '\033[0;33m'
            else
                # else cyan
                echo -e '\033[0;32m'
            fi
        fi
    fi
}


export PS1='\[\033[0;35m\]$ \[\033[0;36m\]\w/\[$(git_color)\]$(git_branch)\[\033[m\] '

# UNIX
alias ls='ls -G'

# MAMP
alias mamp='cd /Applications/MAMP/htdocs'

# Change Directory Commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias macdown='open -a Macdown'

# Git Commands
alias gac='git add -A && git commit -m'
alias gcm='git checkout master'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gbd='git branch -d'
alias pull='git pull origin'
alias push='git push origin'