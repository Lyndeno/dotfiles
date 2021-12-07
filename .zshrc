prompt off
export CONFIG_DISTRO=$(cat /etc/os-release | grep ^NAME= | awk -F= '{print $2}' | head -n 1 | sed -e 's/\"//g')
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

if [[ "Debian GNU/Linux" == $CONFIG_DISTRO ]]
then
	source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	#source /usr/share/zsh-history-substring-search/zsh-history-substring-search.zsh
	source /usr/share/doc/fzf/examples/key-bindings.zsh
	source /usr/share/doc/fzf/examples/completion.zsh
elif [[ "NixOS" == $CONFIG_DISTRO ]]
then
	# autosuggestions
	# syntax
	# history substring
	if [ -n "${commands[fzf-share]}" ]; then
		  source "$(fzf-share)/key-bindings.zsh"
		  source "$(fzf-share)/completion.zsh"
	fi
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
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down

eval "$(starship init zsh)"
