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
    if [[ "$STATUS" == *'Not a git repository'* ]]
        then echo ""
    else
    if [[ "$STATUS" != *'working directory clean'* ]]
        then
        # red if need to commit
        echo -e '\033[0;31m'
    else
    if [[ "$STATUS" == *'Your branch is ahead'* ]]
        then
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



# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

PATH="/usr/local/bin:$PATH"

# PostgreSQL
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# Scala
PATH="/Users/ivanrodriguez/scala-2.10.3/bin:$PATH"

# MAMP
alias mamp='cd /Applications/MAMP/htdocs'

# Change Directory Commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Git Commands
alias gac='git add -A && git commit -m'
alias gcm='git checkout master'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gbd='git branch -d'
alias pull='git pull origin'
alias push='git push origin'

# Rocket Lawyer Specific Git
alias gpod='git push origin develop'

# LESS Commands
alias lx='lessc -x'

# Jekyll Commands
alias jsw="jekyll serve -w"

# Applications
alias web='open -a Google\ Chrome.app'
alias mail='open -a Sparrow.app'


# US assets and CMS
alias assets='cd ~/Dev/RL-US-Assets/'
alias cms='cd ~/Dev/RL-CMS-Data/'

# SSH for Dev Lanes
for (( i = 1; i < 8; i++ )); do
    alias web${i}='ssh irodrig@rlcorpdevlinweb00'${i}
    alias cms${i}='ssh irodrig@rlcorpdevlincms00'${i}
    alias sql${i}='ssh irodrig@dbdev'${i}'hamaster'
done

alias webci='ssh irodrig@rllasciweb001'
alias webstg='ssh irodrig@rlordstgweb001'
