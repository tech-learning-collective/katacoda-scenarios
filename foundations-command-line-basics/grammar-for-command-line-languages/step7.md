Finally, let&rsquo;s have a quick look at another command available to you on the command line to get help quickly, the `apropos` command. It is used for asking a system, &ldquo;What are the appropriate commands for&hellip;?&rdquo; or &ldquo;What is apropos of&hellip;?&rdquo; This command takes one required argument, a keyword to search for. Like other commands, you can look up more information about how to use the `apropos` command by reading its synopsis and description in its man page:

```sh
man apropos
```{{execute}}

As before, press the <kbd>q</kbd> key on your keyboard to quit the pager opened by the `man` command and return to your prompt.

The `apropos` command is particularly useful in finding out what other commands are installed and available on a computer system.

For example, to search for commands appropriate for interacting with the Web, you might try:

```
apropos web
```{{execute}}

Look at that! One of the lines of output says that an executable named `www-browser` is available, which is a simple, text-based Web browser. You can probably guess how to load a Web page using this program with what you now know about command line grammar, but you can always check your assumptions by looking up the man page for the command. Without the `apropos` command, you might not have discovered that this program was available to you.

Similarly, you could search for commands related to manipulating files by using `apropos file` and seeing what comes back. The `apropos` command is one of those commands you use a lot when you&rsquo;re just starting out. Over time, you may find yourself needing it less often as you get more familiar with the systems you&rsquo;re using, which is perfectly fine, too.

Since different computer systems have different programs installed on them, the results of a search with `apropos` won&rsquo;t always be the same on every computer you use. However, once you start using the command line interface of more computers more often, you&rsquo;ll start to expect a certain set of utilities to be available simply because they are so popular or useful.

Much like learning any language, the majority of your time when you start out will probably be spent simply picking up new vocabulary. Let this take as long as you need it to. Practice regularly by returning here or opening the CLI on your own computer. Either way, never hesitate to look up more information about a command by using the `man` command, discovering new commands by searching with `apropos`, or just doing an Internet search to see what else might be out there.
