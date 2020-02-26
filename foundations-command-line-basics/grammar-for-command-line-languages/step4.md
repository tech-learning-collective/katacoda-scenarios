Much like a human language, every command you run needs to have all the parts of speech to make it meaningful. As you just saw, sometimes these are clear from context, but other times you have to be explicit to make sure there are no ambiguities in your instructions. Computers cannot work well with ambiguity.

Also like a human language, each command must have at least one word in it. (Otherwise, you didn&rsquo;t really say anything, did you?)

In a command language, the very first word of every command is called the *executable*. This word is the name of the command itself, or of an installed software program providing a command that you can execute. There are several different types of executables, including *built-ins*, *functions*, and *external programs*, but they all work exactly the same way from a grammatical perspective. Simply name the executable as the first word in your command line to invoke whatever functionality that executable refers to.

After the executable, you write a space, followed by one or more additional words that are generically called *arguments* in order to provide additional detail about what you&rsquo;d like the executable to do.

The precise way you write arguments varies far more than executables because each executable is free to define its arguments however it wants. Thankfully, there is a [standard convention](https://www.gnu.org/software/libc/manual/html_node/Argument-Syntax.html) that almost all executables use to define how arguments are written.

This convention, called the [*Portable Operating System Interface* or *POSIX*](https://en.wikipedia.org/wiki/POSIX) for short, defines several different types of arguments that most programs are written to understand. These are:

* **Options** - Options, sometimes also called *switches*, are arguments that begin with a hyphen or dash (`-`). (In the default Windows Command Prompt program, options sometimes begin with a forward slash [`/`] instead of a dash, but the concept is identical.) You haven&rsquo;t seen any options yet. Options themselves come in two common forms:
    * **Short options** - These are arguments that start with a dash and are only one additional character long. For example, when you see an argument such as `-a` on a command line, that is a short option.
    * **Long options** - These are arguments that start with two dashes and can be any number of characters long. For example, when you see an argument such as `--all` on a command line, that is a long option.
* **Option terminator** - This special argument is always written as two dashes by itself (`--`) and it signals to the executable that the following arguments are *not* to be treated options, even if it also starts with a dash.

Some options also need you to supply an argument *to the option*. These arguments are called *option arguments*, which is not nearly as confusing in practice as it sounds right now. Options that do not require an argument of their own are also sometimes called *flags* because they only have two possible states, as they are either present or absent.

As you&rsquo;ll soon see, when you write most commands, you&rsquo;ll write them and their arguments in the following order:

1. Name of the *executable* first, then
1. *short* or *long options*, if you want to use them or if they are necessary (remember, they may not be), followed by
1. any *option arguments* that you need to supply to the option itself (again, these may often be omitted), and
1. lastly, any regular *arguments* that are necessary to fill out the details of the command.

Let&rsquo;s try a few simple exercises to make all this argument stuff clearer.

**Do this** in the command line interface of your lab environment:

1. Use the `help` command with an argument. For the `help` command, the argument is the name of the command that you want more help with. For example, try getting help about the `help` command:
    ```sh
    help help
    ```{{execute}}
    Notice that the computer&rsquo;s response when you use an argument here is very different from when you do not.
1. Use the `ls` command without any arguments to list the contents of the current folder based on context:
    ```sh
    ls
    ```{{execute}}
1. Use the `ls` command again, this time with the `-a` short option to list *all* the files in the current folder, even the &ldquo;hidden&rdquo; ones:
    ```sh
    ls -a
    ```{{execute}}
    Notice how much more information the `ls` command can produce when you tweak its behavior using the `-a` option. We&rsquo;ll discuss files (and hidden files) more in an upcoming module, so for now just take note of how the same command used with different arguments can produce very different results.
1. Use the `ls` command again, this time with the equivalent long option, `--all`:
    ```sh
    ls --all
    ```{{execute}}
    This time the command output is identical to the previous `ls -a` command because the `ls` command defines its `--all` long option as a synonym, or *alias*, of its `-a` short option:
1. Use the `ls` command again, this time without any options but with an explicit object argument. For `ls`, much like the `touch` command, the explicit object arguments are always file or folder names:
    ```sh
    ls example-folder
    ```{{execute}}
    By naming another folder to list the contents of, you changed the context of the `ls` command&rsquo;s operation. Instead of listing the contents &ldquo;here&rdquo; (wherever &ldquo;here&rdquo;) is, you listed the contents of a specific other place (a different folder) elsewhere on your computer.
1. Use the `ls` command again, this time with both an option and an argument:
    ```sh
    ls -a example-folder
    ```{{execute}}
    You can often combine options and other arguments in order to further customize the behavior and context of each command. More on that in a moment.

As you can see, some commands can accept all kinds of arguments. Others only understand a limited selection. The argument syntax and style you use will depend on the specific executable you are running. That&rsquo;s why the most important part of the command line is the first word, the *executable* itself.

Feel free to practice for as long as you like. When you&rsquo;re ready, continue to the next step to learn more about a set of commands you can use to get more help about other commands available to you.
