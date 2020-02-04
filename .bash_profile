# ensure jupyter notebook inherits LC_ALL
export LC_ALL=en_US.UTF-8

# be nice
alias please="sudo"

function prompt {

   parse_git_branch() {
           git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git::\1)/'
    }

    local BLACK="\[\033[0;30m\]"
    local BLACKBOLD="\[\033[1;30m\]"
    local RED="\[\033[0;31m\]"
    local REDBOLD="\[\033[1;31m\]"
    local GREEN="\[\033[0;32m\]"
    local GREENBOLD="\[\033[1;32m\]"
    local YELLOW="\[\033[0;33m\]"
    local YELLOWBOLD="\[\033[1;33m\]"
    local BLUE="\[\033[0;34m\]"
    local BLUEBOLD="\[\033[1;34m\]"
    local PURPLE="\[\033[0;35m\]"
    local PURPLEBOLD="\[\033[1;35m\]"
    local CYAN="\[\033[0;36m\]"
    local CYANBOLD="\[\033[1;36m\]"
    local WHITE="\[\033[0;37m\]"
    local WHITEBOLD="\[\033[1;37m\]"

    export PS1="$BLUEBOLD\$(parse_git_branch)$RED\H \l $YELLOWBOLD\d $CYANBOLD\t $GREEN|\w|$WHITE\n\u\$ ";

}

prompt

function saytime() { echo "it's" `date +"%l:%M %p"` | say ;}

# source fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# alias e as emacsclient
alias e='emacsclient -t -c -a ""'

# source exa
if type "exa" > /dev/null; then
    alias ls='exa'
    alias ll='exa -lga --sort oldest'
fi

# alias q
alias q='QHOME=~/q rlwrap -r ~/q/m32/q'

# added by Anaconda3 installer
. /Users/hong/anaconda3/etc/profile.d/conda.sh

# add GOBIN to path
export PATH=$PATH:/Users/hong/go/bin
export PATH=~/.local/bin:$PATH

# always the last line!!!
source ~/.bashrc


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"
