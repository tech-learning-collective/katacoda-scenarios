Whether you are using a command line interface (CLI) or a graphical user interface (GUI), you are invoking some metaphor to get things done. You may not have thought about it quite as explicitly before, but every time you look at your computer&rsquo;s so-called &ldquo;desktop,&rdquo; you&rsquo;ve invoked a metaphor to understand the information your computer is showing you. Obviously, your computer does not have a literal desk top; your computer might be *on* the top of a desk, but it is not, itself, a desk, nor is a desk somewhere inside your computer.

Similarly, terms like &ldquo;folder&rdquo; and &ldquo;file&rdquo; are also not referring to literal manilla folders or pieces of paper located somewhere within the machine.

![Animated GIF from the movie Zoolander: &ldquo;The files are in the computer&hellip;. It&rsquo;s so simple!&rdquo;](https://i.makeagif.com/media/5-24-2016/Q9RnQx.gif)

All of these terms are merely metaphors that help us understand the capabilities of the interface that we have been presented with.

The graphical user interface of a desktop, in which files are *represented* by visual icons of paper, is how the computer lets us know that these objects can be moved from one place to another, organized into related groupings by being placed in file-container-things called folders, and so on. If you already know what a folder and a piece of paper is, then you can apply everything you know about those things to the *metaphorical* folders and files in your computer.

All interfaces are ultimately simply metaphors just like this, and the command line interface is no different. Instead of using the metaphor of an office workspace with a desk, folders, and files, the command line interface uses the metaphor of an office *assistant* to whom you can make requests and issue commands. Instead of directly manipulating the files, you ask your assistant (your computer) to do something with those files and folders.

Another way to think of the command line is as though it is a private chat room in which only you and the computer are present. Instead of pushing papers, pressing buttons, or pulling levers on a machine in order to make it produce reports, you ask questions and get answers. When you run into trouble or get stuck on a problem, instead of flipping through a user manual, you simply ask for help directly.

Let&rsquo;s ask for some help from the computer now.

**Do this** in the command line interface pane of this lab environment:

1. Type `help` and then press the <kbd>Enter</kbd> or <kbd>Return</kbd> key on your keyboard. (You can also simply click on the following command block to copy and paste the text into the command line and run the command.)
    ```sh
    help
    ```{{execute}}

When you said &ldquo;help&rdquo; to your computer via the command line, the computer responded by offering you some guidance on what you can do and how to do it. The response may feel simultaneously terse and overwhelming, but don&rsquo;t despair. It takes time to learn a new language, system, anything!

The output of the `help` command may have also been more than will fit on your screen. In that case, scroll back up to the beginning of the computer&rsquo;s reply to read it from the beginning. This is always good advice: the best place to start is the beginning. In this case, the beginning looks something like:

```
GNU bash, version 4.3.48(1)-release (x86_64-pc-linux-gnu)
These shell commands are defined internally.  Type `help' to see this list.
Type `help name' to find out more about the function `name'.
Use `info bash' to find out more about the shell in general.
Use `man -k' or `info' to find out more about commands not in this list.

A star (*) next to a name means that the command is disabled.
```

After this brief prologue, the computer printed a non-exhaustive listing of some of the commands it understands. Later in this course, we&rsquo;ll get a chance to practice using many of these, but for now take a moment to congratulate yourself on running your very first command in a command line environment!

If you&rsquo;d like, try executing the `help` command in your own computer&rsquo;s command line environment and see what it says. Different computers understand different commands, just like different people speak different languages. Your computer might understand more, less, or different commands than the ones this lab environment does. When you&rsquo;re ready, return here to learn more about how the command line paradigm differs from the graphical user interface.
