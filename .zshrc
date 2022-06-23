
"prompt setting
"zdotdir


"bindkey
bindkey "${terminfo[kcbt]}"     reverse-menu-complete
bindkey "${terminfo[kcuu1]}"    history-search-backward
bindkey "${terminfo[kcud1]}"    history-search-forward
bindkey "${terminfo[kbs]}"      backward-kill-word
bindkey "^A"                    beginning-of-line
bindkey "^E"                    end-of-line

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
autoload -N up-line-or-beginning-search
autoload -N down-line-or-beginning-search

bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

