if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Arch already has this in fpath
if [[ "macOS" == $CONFIG_DISTRO ]]
then
	fpath=(/opt/homebrew/share/zsh-completions $fpath)
fi

zmodload zsh/complist
autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

### Aliases ###
alias cat="bat"
alias ls="exa --icons --group-directories-first -B"

if [ ! -d ~/.cache/zsh ]
then
	mkdir -p ~/.cache/zsh
fi

# Vim bindings for tab menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

HISTFILE=~/.cache/zsh/histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt histignoredups

# Directory Stack
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
alias d='dirs -v'
for i ({1..9}) alias "$i"="cd +${i}"; unset i

if [[ "macOS" == $CONFIG_DISTRO ]]
then
	source /opt/homebrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /opt/homebrew/opt/zsh-history-substring-search/share/zsh-history-substring-search/zsh-history-substring-search.zsh
	source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
	source /opt/homebrew/opt/fzf/shell/completion.zsh

else
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
	if [[ "void" == $CONFIG_DISTRO ]]
	then
		source /usr/share/doc/fzf/key-bindings.zsh
		source /usr/share/doc/fzf/completion.zsh
	else
		source /usr/share/fzf/key-bindings.zsh
		source /usr/share/fzf/completion.zsh
	fi
fi

# Autosuggest based on history and command completions
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history completion)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
typeset -A ZSH_HIGHLIGHT_PATTERNS
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# Binding for accepting suggestions
bindkey '^ ' autosuggest-accept

# History-substring-search bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

eval "$(starship init zsh)"
