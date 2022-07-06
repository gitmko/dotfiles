if type "xrandr", then
	for m in $(xrandr --query) | grep "connected" | cut -d" " -f1); do
		MONITOR=$, [polybar --reload base &
	done
else
	polybar --reload base &
fi
