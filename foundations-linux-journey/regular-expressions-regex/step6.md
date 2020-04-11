Now you may have noticed if you tried to type something you wouldn't be able to. That's because you are in command mode. This can get pretty confusing especially if you just want to open a file and enter text. The command mode is used for when you enter commands like h,j,k.l etc. To insert text you'll need to enter insert mode first.

* `i` - insert text before the cursor
* `O` - insert text on the previous line
* `o` - insert text on the next line
* `a` - append text after the cursor
* `A` - append text at the end of the line

Notice how when you type any of these insertion modes, you'll see that vim has entered insert mode at the bottom of the shell. To exit insert mode and go back to command mode, just hit the Esc key.
