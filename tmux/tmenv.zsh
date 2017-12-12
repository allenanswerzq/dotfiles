#!/bin/bash 
#
# used for update environment variables inside tmux sessions 
# Note: for loop loops over words or fileds, not loops over lines 
# 09-19-2017
# by qz517
#
function tmuxenv() {

	tmux=/usr/bin/tmux
	envs=$(/usr/bin/tmux show-environment | sed -e '/^-/d' -e 's/=/="/' -e 's/$/\"/')

	# echo $envs | hexdump -C

	# ref: https://stackoverflow.com/questions/10748703/iterate-over-lines-instead-of-words-in-a-for-loop-of-shell-script
	
	#echo $envs | while read line; do
	#		echo $line
	#		echo "xxxx"
	#done

	# ref: http://tldp.org/LDP/abs/html/process-sub.html	
	while read v; do
		echo "Exporting:" $v
		export $v
	done < <(echo $envs)
}

