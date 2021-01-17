Another command that provides help about other commands along with command synopses for those commands is the `man` command, which is short for &ldquo;manual.&rdquo; Much like `help`, the `man` command requires an argument to be useful. Try it out now.

**Do this** on the command line interface of your lab environment:

1. Use the `man` command without any arguments to see how it behaves:
    ```sh
    man
    ```{{execute}}
1. Look up the manual page for the `touch` command that you used earlier:
    ```sh
    man touch
    ```{{execute}}

For many commands that are not built-in to the Bash interpreter, you need to use the `man` command instead of the `help` command to find information about them. The `touch` command is one of these *external commands* that is not part of the Bash interpreter itself.

You&rsquo;ll also no doubt notice that the formatting of a manual page is a little nicer than the simple `help` command&rsquo;s readout. The individual parts of a manual page are typically broken down visually with headers. There will almost always be at least a *Name*, *Synopsis*, and *Description* header, but many complicated commands have more headers introducing further specifics.

Also in a manual page, there are headers and footers that help describe where the given manual page lives in relation to all the other manual pages available in your computer&rsquo;s *on-line manual*. The `touch` command is in Section 1, the &ldquo;User Commands&rdquo; section, which is shown like this on the first line of the manual page:

```
TOUCH(1)  User Commands  TOUCH(1)
```

The section number is in parentheses following the name of the page itself (`TOUCH(1)`), and in the middle is the name of the section.

When referring to a manual page, this convention of printing the executable followed by its manual page section in parenthesis is often used to help you find the specific page you are looking for, which can be especially useful when your system contains two commands that may have the same (or very similar) names. For example, to look up the full manual page for `bash` itself, you might be told to &ldquo;read the `bash(1)` man page,&rdquo; which means &ldquo;Look in Section `1` of the manual for the page called `bash`.&rdquo; The command for this is `man 1 bash`, which in this case is the same as `man bash` simply because the only manual page in any section of the manual available on this computer called `bash` is in Section 1.

Before the advent of the Internet, &ldquo;using the on-line manual&rdquo; simply meant reading a file that already existed on your computer, called a *man page* file, and since your computer was up and running, it was said to be &ldquo;on-line,&rdquo; as in, &ldquo;on the (telephone) line,&rdquo; so the built-in manual was often referred to as &ldquo;the on-line manual.&rdquo; This is still the go-to reference guide for any software that comes with your computer, even after all these many decades later.

These on-line manuals of many computer systems are divided into *manual sections*, which cover different topics ranging from end-user commands (typically Section 1), to low-level code library headers and function signatures (typically Section 3), to special-purpose commands and features useful mostly for administrators and system operators (typically Section 8). As you can see, there is a lot more than just command synopses in the on-line manual, and you can learn a lot about the computer system you&rsquo;re using simply by reading the relevant portion(s) of the on-line manual.

One thing that&rsquo;s particularly noteworthy about the on-line manual is that when you install new software, new pages are often added to the appropriate section of the manual by the software&rsquo;s installer. This means that the on-line manual is more like a living spellbook than a dusty product manual tucked into the back of a forgotten drawer. Manual pages can also be updated with software, so if you upgrade some program that you already installed, the upgrade process might also expand or improve the man(ual) page that it comes with.

In any event, below the manual page header is a section for the Name of the command, along with a brief description. After that is the synopsis. For the `touch` command in your lab environment, the synopsis reads:

```
SYNOPSIS
       touch [OPTION]... FILE...
```

In this case, we have to read through the Description to see what the actual options are, but we know they are all optional because that portion of the command synopsis shows them in square brackets. Sure enough, when we used the `touch` command earlier, we had to supply a file name, but not any options. This matches exactly the synopsis we&rsquo;re seeing here.

The `man` command is invaluable, and you should get into the habit of reading at least the command synopses for any commands that you are not yet familiar with.

Also, by default, the `man` command will open a new program that we haven&rsquo;t seen yet called a terminal *pager*. Pager programs let you use the arrow keys on your keyboard to scroll up and down. They are particularly useful when there is too much output from a command to fit on one screen. You can tell that you&rsquo;re now in a pager and not speaking directly to your Bash interpreter because you no longer have your command prompt symbol (the `$`) at the bottom of the command line interface.

To return to your command prompt, press the <kbd>q</kbd> key on your keyboard to quit the pager.
