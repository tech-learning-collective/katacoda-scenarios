But now, let's experience this language, this pre-visual world of your computer. The terminal has been waiting patiently for a command, and so let's give it one. Type `ls`{{execute}} and hit <kbd>enter</kbd>.

`ls` means "list" and displays everything in the directory you're in. Look at the names listed here and you will see the 'Desktop' is now just a directory in this list. Already, we are outside the borders of the familiar; above and beyond the visual surface of the computer.

Type `pwd`{{execute}} and hit <kbd>enter</kbd>. This stands for &ldquo;print working directory.&rdquo; This lets you see exactly where you're located now in this exchange. Right now you are in your home directory which would show as `/Users/yourname` (or computer's name) on some computers, `/home/yourname` on others, and still other variations on other computers (like `/root` for the superuser of a UNIX-like computer). But we can leave home, go even further out and even further up.

The `cd` command lets you "change directories" and if you type `cd ..` it will take you one directory above.

Type `cd ..`{{execute}} again and `ls`{{execute}} again.

Now we are in a place outside of 'users' or homes. These are the areas 'volumes' or 'mounts' live, the hardware ports that attach to your computer. And here are the folders containing the integral scripts that make your computer run. For fun, let's look at this area even more clearly.

You can add some accented speech to your commands, nuance that changes exactly what you're asking. For example, type `ls -a`{{execute}}.

The `-a` means, essentially &ldquo;list all&rdquo;, including the secret scripts and directories made intentionally invisible. With three letters and a dash you now know how to make the hidden things show themselves. But let's go even further, and look at what is invoked when the computer first turns on.

Type `cat /etc/rc0.d/K07networking` but don't hit enter. `cat` asks the terminal to display all that is in a script or file on the terminal screen. You make this file speak to you, in a way. And so with the command you typed, you are asking the script `K07networking`, in the `rc0.d` directory, which is itself in the `etc` directory, to please speak up and tell you about itself.

Hit <kbd>enter</kbd>.

This is entirety of the `K07networking` script, one of the many that runs when the computer boots up. It tells the computer what it is, and where certain things are, and how to build up all the things necessary to display itself.

But it's something else too, something familiar. Here we see different snippets of intentionally placed phrases, each one left by some human or procession of humans. As new technologies arose (like USB ports or the Internet), then new snippets were added to this script. Each one looks strange on its own but when they are run together, in their intentional order, the computer is given life.

**The computer, at it&rsquo;s core, is a collective chant**, a series of words given new meaning when interlocked with one another, and through this chant a history of human visions is given light. When you move around the terminal, and when you write your own files and your own code, you are joining in this chant.
