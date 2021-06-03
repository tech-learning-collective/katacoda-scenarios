Just as there are many different human languages, so too are there many different command line languages. In this module, you&rsquo;ll learn the most common of these command line languages, called Bash.

Bash is the name given to both a computer program that interprets text written in the Bash command line language and the name of the language itself, written by [Brian J. Fox](https://twit.tv/shows/floss-weekly/episodes/632) and first released in 1989. It is an abbreviation for *Bourne-Again SHell*, an irreverent joke on the name of its predecessor, the [Bourne shell](https://en.wikipedia.org/wiki/Bourne_shell), which was written by Stephen Bourne at Bell Labs in 1979. Although there are other command line languages, they are typically only available to you if you install a program, called an [*interpreter*](https://en.wikipedia.org/wiki/Command-line_interface#Command-line_interpreter) or a *shell*, on your computer that can understand them.

We primarily use Bash because it is nearly guaranteed to be available on every computer system you will ever encounter. Bash is also the default shell (interpreter) for many different kinds of computers, including macOS computers before version 10.15 Catalina and most GNU/Linux computers. Even Android smartphones, embedded computers on routers, modems, and all sorts of other devices typically use Bash. By default, Windows uses its own command line language, but you can [install a Bash interpreter on Windows](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/), too.

Other command line interpreters that you might encounter one day are [Z Shell](https://en.wikipedia.org/wiki/Z_shell), [KornShell](https://en.wikipedia.org/wiki/KornShell), and the [TENEX C Shell](https://en.wikipedia.org/wiki/Tcsh). Many of the grammatical rules that apply to Bash will apply to the command languages understood by these other interpreters, as well, but there are differences. However, once you learn the basics with Bash, these differences will feel more like regional dialects instead of completely foreign languages.

You already know one command available in almost all command line languages: `help`. This command will typically also tell you what interpreter you are using. When you are using Bash, the `help` command tells you that you are using Bash as part of the first line of the response, along with the exact version of the `bash` program that is running.

**Do this** in the command line interface in this lab environment:

1. Type `help`, and then press the <kbd>Return</kbd> or <kbd>Enter</kbd> key on your keyboard to learn exactly what interpreter and which version of that interpreter is running:
    ```sh
    help
    ```{{execute}}

On the very first line of output, you will see something like this:

```
GNU bash, version 4.3.48(1)-release (x86_64-pc-linux-gnu)
```

Note that the version of Bash might be different when you run this command, but the format of the reply will look similar.

This informs us that you are using the Bash interpreter (`GNU bash`) at version 4.3.48. The last part of the reply tells us that the lab environment is running on a 64-bit, [x86](https://en.wikipedia.org/wiki/X86) GNU/Linux system (`x86_64-pc-linux-gnu`). In all of this output, *GNU* is the name of the [Free Software](https://www.gnu.org/philosophy/free-sw.html) organization that created and publishes updates for the Bash interpreter and many parts of the Linux Operating System, called the [GNU Project](https://en.wikipedia.org/wiki/GNU_Project).

See if you can find out which interpreter and which version of it you are using when you open the command line interface for your own computer. Then, when you&rsquo;re ready, continue to the next step to learn about the anatomy of the Bash command line grammar.
