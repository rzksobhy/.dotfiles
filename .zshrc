PROMPT="%n@%m:%~$ "

stty intr ^E

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# some useful options (man zshoptions)
setopt menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')
unsetopt BEEP

# completions
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

# shift+tab
bindkey -M menuselect '^[[Z' reverse-menu-complete

# vim-mode
export ZVM_VI_INSERT_ESCAPE_BINDKEY=^C
export ZVM_CURSOR_STYLE_ENABLED=false
source $HOME/.local/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# FZF
export FZF_DEFAULT_OPTS='--layout=default --no-height'
export FZF_DEFAULT_COMMAND='fdfind --color=never'
export FZF_ALT_C_COMMAND='fdfind --color=never -td'
source /usr/share/doc/fzf/examples/key-bindings.zsh

# Alias
alias l='ls -al'
alias ll='ls -l'
alias ls='ls --color=auto'
alias vim=nvim
alias fd=fdfind
