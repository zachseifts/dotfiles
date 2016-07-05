# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="lukerandall"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew pip mysql vagrant tmux ssh-agent)

source $ZSH/oh-my-zsh.sh

setopt NO_clobber \
       NO_glob_assign \
       extended_glob \
       extended_history \
       glob_complete \
       hist_allow_clobber \
       hist_expire_dups_first \
       hist_ignore_all_dups \
       hist_ignore_dups \
       hist_ignore_space \
       hist_reduce_blanks \
       hist_verify \
       share_history \
       interactive_comments \
       list_packed \
       long_list_jobs \
       multios \
       numeric_glob_sort \
       posix_builtins \
       prompt_subst \
       pushd_ignore_dups \
       AUTOPUSHD \
       MARK_DIRS

bindkey -v
bindkey '^R' history-incremental-search-backward

export PATH=$HOME/bin:$PATH
export NODE_PATH=/usr/local/lib/node
export ANDROID_HOME=/usr/local/opt/android-sdk

if [[ $(uname -s) == "Darwin" ]]; then
    export PATH=/usr/local/bin:$PATH
    export PATH=/Users/zach/Applications/utilities/bin:$PATH
    export PATH=$HOME/.rvm/bin:$PATH
    export PATH=/usr/local/sbin:$PATH
    alias grep='/usr/bin/grep --color=always -R -n'
else
    alias grep='/bin/grep --color=always -r -n'
fi

export EDITOR=vim

set -o vi

autoload -U down-line-or-beginning-search up-line-or-beginning-search
zle -N down-line-or-history down-line-or-beginning-search
zle -N up-line-or-history up-line-or-beginning-search

echo "omg hai there."
