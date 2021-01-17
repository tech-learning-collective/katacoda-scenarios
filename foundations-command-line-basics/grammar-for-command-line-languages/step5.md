Now that you understand the basics of command line grammar, it&rsquo;s time to learn how you can use this knowledge to get even more help. This is something that experienced system administrators and programmers do *constantly*, so don&rsquo;t feel like asking for help somehow makes you a less capable computer user. In fact, the single most important computer skill you can cultivate is the skill of getting more information by asking the system itself for help.

You&rsquo;ve also already seen one of the most important commands for getting more help: the `help` command. You now also understand that some commands, including the `help` command, can be made to produce different output based on the *arguments* that you supply. For example, invoking the `help help` command gets you more help about the `help` command!

If you took a really close read of the beginning of the `help` command&rsquo;s output, you may have noticed that this is something the computer itself told you:

```
Type `help name' to find out more about the function `name'.
```

This part of Bash&rsquo;s reply when you type `help` means that you can supply an argument (shown here as `name`) to get the `help` command to change its output to more specific help about a given command. The list of commands that you can get `help` about is shown below. Try some of these if you haven&rsquo;t already to see more help about the commands in the list.

For example:

```sh
help echo
```{{execute}}

The above will give you more help about the `echo` command.

Each time you ask for help about a given command, the very first part of the reply shows you the *command synopsis*. In the case of the `echo` command, the synopsis reads:

```
echo [-neE] [arg ...]
```

A synopsis is a short summary and serves the same purpose in a command line language as it does in a human langauge. The idea is that you can use the synopsis to quickly refresh your memory about how you use a given command, or to look up more information if you want to dive deeper.

Command synopses always start with the name of the command (`echo`) because, as we learned previously, the first word of a command line is always going to be the executable that you are using. If you are using the `echo` command, it means the very first word on your command line must be `echo`.

Next, we see some *short options*, which are the letters that begin with the single hyphen or dash character (`-`). These options are listed in square brackets (`[` and `]`), which indicate that they can be omitted. That is, these options are, well, optional. Perhaps confusingly, not all *option arguments* are optional! But in this case, they are, and we know that because the command synopsis shows the option arguments in square brackets.

Finally, we see an argument list, also in square brackets. We know it&rsquo;s a list because of the special three dots token, `...`. This means we can supply any number of arguments as we want, and they are all optional because they are shown inside the square brackets.

Here&rsquo;s an ASCII art diagram of the same thing:

```
echo [-neE] [arg ...]
^    ^  ^         ^
|    |  |______   |
|    \______  |   Multiple argument (list) indicator.
|          |  |
Executable |  Short options
           |
           Optional indicator
```

**Do this** to practice reading a command synopsis:

1. Use the `echo` command with no arguments. We know this will work because every argument in the command synopsis is shown in square brackets, meaning that those words are optional for this executable:
    ```sh
    echo
    ```{{execute}}
    This command doesn&rsquo;t do much of interest, but it did successfully complete.
1. Use the `echo` command with the `-n` option, which suppresses printing the new line character:
    ```sh
    echo -n
    ```{{execute}}
    Notice that, this time, your command prompt (the `$` sign) appears on the line immediately following; there is no longer a single blank line printed by the computer in reply to your command. This is because you told the computer *not* to print that linebreak by using the `-n` option flag.
1. Use the `echo` command with both the `-n` option and some arguments:
    ```sh
    echo -n "Hello, computer."
    ```{{execute}}
    This time, notice that your command prompt appears immediately following the text you told the computer to echo. Again, this happens because of the `-n` flag.
