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

# source exa
if type "exa" > /dev/null; then
    alias ls='exa'
    alias ll='exa -lga --sort oldest'
fi

# aliases
alias q='QHOME=~/q rlwrap -r ~/q/m32/q'
alias k='kubectl'
alias kcfg='k config'
alias kg='k get'

# add GOBIN to path
export PATH=$PATH:/Users/hong/go/bin
export PATH=~/.local/bin:$PATH

# always the last line!!!
source ~/.bashrc


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hong/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hong/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/hong/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hong/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source "$HOME/.cargo/env"
