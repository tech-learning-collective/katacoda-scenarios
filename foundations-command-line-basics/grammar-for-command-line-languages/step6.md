Another command that provides help about other commands along with command synopses for those commands is the `man` command, which is short for &ldquo;manual&rdquo;. Much like `help`, the `man` command requires an argument to be useful. Try it out now.

**Do this** on the command line interface of your lab environment:

1. Use the `man` command without any arguments to see how it behaves:
    ```sh
    man
    ```{{execute}}
1. Look up the manual page for the `touch` command that you used earlier:
    ```sh
    man touch
    ```{{execute}}

For many commands that are not built-in to the Bash interpreter, you need to use the `man` command instead of the `help` command to find information about them. The `touch` command is one of these *external commands* that is not part of the Bash interpreter proper.

You&rsquo;ll also no doubt notice that the formatting of a manual page is a little nicer than the simple `help` command readout. Manual pages are broken down with headers. Usually, there will be at least a Name, Synopsis, and Description headers, but some complicated commands have many more manual page headers.

The synopsis for the `touch` command looks like this:

```
SYNOPSIS
       touch [OPTION]... FILE...
```

In this case, we have to read through the Description to see what the actual options are, but we know they are all optional because that portion of the command synopsis shows them in square brackets. Sure enough, when we used the `touch` command earlier, we had to supply a file name, but not any options. This matches exactly the synopsis we&rsquo;re seeing here.

The `man` command is invaluable, and you should get into the habit of reading at least the command synopses for any commands that you are not yet familiar with.

Also, by default, the `man` command will open a new program that we haven&rsquo;t seen yet called a *pager*. Pager programs let you use the arrow keys on your keyboard to scroll up and down. They are particularly useful when there is too much output from a command to fit on one screen. You can tell that you&rsquo;re now in a pager and not speaking directly to your Bash interpreter because you no longer have your command prompt symbol (the `$`) at the bottom of the command line interface.

To return to your command prompt, press the <kbd>q</kbd> key on your keyboard to quit the pager.
