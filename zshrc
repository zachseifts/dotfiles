# Oh-my-zsh & zsh configuration
#
# For more info, see: ~/.oh-my-zsh/templates/zshrc.zsh-template

export EDITOR=vim
set -o vi

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="lukerandall"
plugins=(git osx brew pip vagrant tmux ssh-agent)

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

if [[ $(uname -s) == "Darwin" ]]; then
    alias grep='/usr/bin/grep --color=always -R -n'
else
    alias grep='/bin/grep --color=always -r -n'
fi

autoload -U down-line-or-beginning-search up-line-or-beginning-search
zle -N down-line-or-history down-line-or-beginning-search
zle -N up-line-or-history up-line-or-beginning-search

echo "omg hai there."
