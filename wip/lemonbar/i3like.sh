#!/bin/bash
# First test of lemonbar-piping
# Attempting to replicate the most useful parts of the default i3status output:
# Free space on partition | Wifi status | Ethernet status | Battery life remaining | CPU usage | Date and time

# Define the free space remaining
freespace() {
	FREESPACE="$(df -h /dev/sda6 | tail -1 | cut -d' ' -f15)"
	echo "$FREESPACE"
}

# Define the battery percentage
battery() {
	BATTPC="$(acpi --battery | cut -d, -f2)"
	echo "$BATTPC"
}

# Define the CPU usage (courtesy of /proc/stat)
cpu() {
	user="$(cat /proc/stat | head -1 | cut -d' ' -f3)"
	nice="$(cat /proc/stat | head -1 | cut -d' ' -f4)"
	system="$(cat /proc/stat | head -1 | cut -d' ' -f5)"
	idle="$(cat /proc/stat | head -1 | cut -d' ' -f6)"
	iowait="$(cat /proc/stat | head -1 | cut -d' ' -f7)"
	irq="$(cat /proc/stat | head -1 | cut -d' ' -f8)"
	softirq="$(cat /proc/stat | head -1 | cut -d' ' -f9)"
	steal="$(cat /proc/stat | head -1 | cut -d' ' -f10)"
	guest="$(cat /proc/stat | head -1 | cut -d' ' -f11)"
	guestnice="$(cat /proc/stat | head -1 | cut -d' ' -f12)"

	avgidle="$((($idle*100) / ($user+$nice+$system+$idle+$iowait+$irq+$softirq+$steal+$guest+$guestnice)))"

	CPU="$((100-${avgidle}))"
	echo "$CPU%"
}

# Define the clock
clock() {
	DATETIME="$(date "+%A %d %B %Y, %I:%M%P")"
	echo -n "$DATETIME"
}

# Print the things
while true; do
	#echo "%{c}%{F#A2A2A2}%{B#CC282828} %{A:firefox:}Browser%{A} | %{A:gnome-terminal:}Terminal%{A} | %{A:subl:}Sublime%{A} ---"
	echo "%{c}%{F#FFFFFF}%{B#AA000000} $(freespace) | WIFI | ETH | Battery: $(battery) | CPU: $(cpu) | $(clock) %{F-}%{B-}"
	sleep 1
done
