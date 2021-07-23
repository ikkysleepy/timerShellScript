#!/bin/bash
RUNNINGFILE=./running.txt
PAUSEDFILE=./paused.txt
PIDFILE=./run.pid

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

if [[ $# -eq 0 ]] ; then
	
	if [[ -f "$RUNNINGFILE" ]]; then
		
		if [[ -f "$PAUSEDFILE" ]]; then
			rm "$PAUSEDFILE"
		else
			touch "$PAUSEDFILE"		
		fi
	else
		osascript ./main.scpt > /dev/null 2>&1 & echo $! > ./run.pid	
	fi
else
	
	if [[ -f "$PIDFILE" ]]; then
		kill -9 $(<"$PIDFILE")
		rm "$PIDFILE"
		
		
		if [[ -f "$RUNNINGFILE" ]]; then
			rm "$RUNNINGFILE"
   
			if [[ -f "$PAUSEDFILE" ]]; then
				rm "$PAUSEDFILE"
			fi
		fi
		
	fi
fi