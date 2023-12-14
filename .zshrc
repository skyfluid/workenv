##bindkey
bindkey "${terminfo[kcbt]}"     reverse-menu-complete
#bindkey "${terminfo[kcuu1]}"    history-search-backward
#bindkey "${terminfo[kcud1]}"    history-search-forward
#bindkey "${terminfo[kbs]}"      backward-kill-word
bindkey "^A"                    beginning-of-line
bindkey "^E"                    end-of-line

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

##prompt setting
##ref: https://dwatow.github.io/2020/06-17-pure-zsh/#fn3

## 選單補全，用 tab 移動選擇, dircolor
#zstyle ':completion:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
eval $(dircolors -b ~/.dir_colors)

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' %F{1}%b%f'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

# Docker
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
# exec $SHELL -l

# output
PROMPT='%F{184}%n%f@%F{2}%m%f:%F{30}%~%f ${vcs_info_msg_0_}$ '

source ~/.zshrc.alias
