#!/bin/bash
RUNNINGFILE=./running.txt
PAUSEDFILE=./paused.txt
PIDFILE=./run.pid

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
	
if [[ -f "$PIDFILE" ]]; then
	kill -9 $(<"$PIDFILE")
	rm "$PIDFILE"
	
	osascript -e 'display notification "Break Timer" with title "Killed Break Timer"'
	
	if [[ -f "$RUNNINGFILE" ]]; then
		rm "$RUNNINGFILE"
   
		if [[ -f "$PAUSEDFILE" ]]; then
			rm "$PAUSEDFILE"
		fi
	fi
	
fi