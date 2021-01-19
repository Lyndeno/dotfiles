function code
	/bin/code $argv --disable-frame-rate-limit
end

function paru
	/bin/paru $argv ; pkill -RTMIN+1 waybar
end

# goes at end
starship init fish | source
