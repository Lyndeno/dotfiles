autoload -Uz compinit
compinit

### Aliases ###
alias cat="bat"
alias ls="exa --icons --group-directories-first -B"

if [ ! -d ~/.cache/zsh ]
then
	mkdir -p ~/.cache/zsh
fi

HISTFILE=~/.cache/zsh/histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory
setopt sharehistory
setopt incappendhistory

if [[ "Lyndons-Mac-mini.local" == "$(hostname)" ]]
then
	source /opt/homebrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /opt/homebrew/opt/zsh-history-substring-search/share/zsh-history-substring-search/zsh-history-substring-search.zsh

else
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

eval "$(starship init zsh)"
