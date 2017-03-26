# Bash-keystroker
<br>
This script will simulate keystrokes.
<br>

#Usage
<br>
Usage is "path/to/script.sh" "numer of times to stroke(required)" "what to keystroke(not required, leave blank for default(e))" "pre loop sleep(not required, leave blank for default(5))" "mode (keystroke or cp, more on this later (not required, leave blank for default(keystroke))" 
<br><br>
### *What mode should I use?*
This depends on what you want to keystroke. The default method, "keystroke", will simply stroke whatever you tell it to do, letter by letter. This is very fast if you are keystroking one letter, but will slow down if you increase the number of letters to use. 
<br><br>
The method "cp" on the other hand works very differently. Instead of parsing each letter one by one, it parses the whole word (or words, depending on what you used as $2). This is very slow for single letter strokes, but very fast if keystroking longer words.  
<br><br>
#### Let's look at the stats. 

"keystroke" will stroke about 30-80 letters per second, depending on $2 length. The longer it is the faster. "cp" on the other hand will stroke about 10 blocks per second(where 1 block is your $3). **This means it is more effective to use "cp" if your intention is to keystroke a word with more than 8 characters.** 
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
<br><br>
Keystroking 1 line of all numbers from 1 to 100 using "keystroke"
<br>
`./Keystroker.sh 1 "$(echo {1..100})" "5" "keystroke"`
