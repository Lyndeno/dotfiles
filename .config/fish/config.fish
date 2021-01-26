# aliases
alias sys='systemctl'
alias ssys='sudo systemctl'

function code
	/bin/code $argv --disable-frame-rate-limit
end

function paru
	/bin/paru $argv ; pkill -RTMIN+1 waybar
end

function yadm
	/bin/yadm $argv ; pkill -RTMIN+2 waybar
end

# other stuff
export GPG_TTY=(tty)

# goes at end
starship init fish | source
