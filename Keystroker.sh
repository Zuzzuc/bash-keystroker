#!/bin/bash
# License: The MIT License (MIT)
# Author Zuzzuc https://github.com/Zuzzuc/
#
# Supported modes: "keystroke" and "cp"
# keystroke simulates keystrokes, this is very fast when performing shorter words or letters.
# cp works by, instead of parsing the the word letter by letter as keystroke does, parsing the whole word at once. This is much faster if the provided keystrokes are longen than 10 words.
#
default="e"
defaultsleep="5"
defaultmode="keystroke"
if [[ "$1" -le "0" ]];then
	echo '$1 needs to be greater than 0'
	exit 1
fi
if [[ "$2" == "" ]];then
	keystroke=e
	echo "Keystroke(s) not specified, using default($default)"
else
	keystroke=$2
	echo "Keystroke set to $keystroke"
fi
if [[ "$3" == "" ]];then
	sleep=$defaultsleep
else
	sleep=$3
fi
if [[ "$4" == "cp" ]];then
	mode="cp"
elif [[ "$4" == "keystroke" ]];then
	mode="keystroke"
else
	echo "Did not recognize mode, using default($defaultmode)"
	mode=$defaultmode
fi
echo "Launching in $sleep second(s) with mode $mode"
sleep $sleep
echo "launching"
if [ "$mode" == "keystroke" ];then
	osascript -e 'repeat "'$1'" times' -e 'tell application "System Events"' -e "keystroke \"$keystroke\"" -e 'keystroke return' -e 'end tell' -e 'end repeat'
elif [ "$mode" == "cp" ];then
	backupcopy=$(pbpaste)
	echo "$keystroke" | pbcopy
	c=0
	while [ "$c" -le "$1" ];do
		osascript -e 'tell application "System Events" to keystroke "v" using {command down}'
	let c=c+1;
	done
	echo "$backupcopy" | pbcopy
fi
echo "Done."