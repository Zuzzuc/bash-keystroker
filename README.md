# Bash-keystroker
<br>
This script will simulate keystrokes to whatever is currently selected.
<br>

#Usage
<br>
Usage is "path/to/script.sh" "numer of times to stroke(required)" "pre loop sleep(not required, leave blank for default(5))" "what to keystroke(not required, leave blank for default(e))" "mode (keystroke or cp, more on this later (not required, leave blank for default(keystroke))"
<br><br>
###*What mode should I use?*
This depends on what you want to keystroke. The default method, "keystroke", will simply stroke whatever you tell it to to letter by letter. This is very fast if you aer keystroning one letter, but will slow down if you increase the number of letters to use.
<br><br>
The method "cp" on the other hand works very differently. Instead of parsing each letter one by one, it parses the whole word (or words, depening on what you used as $2). This is very slow for single letter strokes, but very fast if keystroking longer words. 
<br><br>
####Let's look at the stats. 

"keystroke" will stroke about 83 letters per second, while "cp" will stroke about 10 blocks per second(where 1 block is your $3). **This means it is more effective to use "cp" if your intention is to keystroke a word longer than 8 characters.**
<br>
# Examples
<br><br>
Keystroking 10 "e" (with default setting for sleep(5) and mode(keystroke)
<br>
`./Keystroker.sh 10 "e"`
<br><br>
Keystroking 10 "e" using "keystroke"
<br>
`./Keystroker.sh 10 "e" "5" "keystroke"`
<br><br>
Keystroking 10 "testtext" using "cp"
<br>
`./Keystroker.sh 10 "testtext" "5" "cp"`
