Run the following command: 

```
echo $HOME
```{{execute}}

You should see the path to your home directory, mine looks like `/home/pete`. 

What about this command? 

```
echo $USER
```{{execute}}

You should see your username!

Where is this information coming from? It's coming from your *environment variables*. You can print these with the `env` command:

```
env
```{{execute}}

This outputs a whole lot of information about the environment variables you currently have set. These variables contain useful information that the shell and other processes can use.

Here is a short example snippet:

```
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/bin
PWD=/home/user
USER=pete
```

One particularly important variable is the `PATH` Variable. You can access these variables in your shell by prepending a `$` in front of the variable name, like so:

```
echo $PATH
```{{execute}}

The `$` is called a *[sigil](https://en.wikipedia.org/wiki/Sigil_%28computer_programming%29)*, as in [a symbol used to perform a magic spell](https://en.wikipedia.org/wiki/Sigil), because the sigil tells the shell to "magically" replace the word `$PATH` with the value of whatever that variable contains.

The `PATH` variable is important because it holds the list of filesystem paths, each separated by a colon, that your system searches through when it runs a command. Let's say you manually download and install a package from the Internet and put it in to a non-standard directory and want to run that command. you type `coolcommand` and the prompt says "`command not found`." Well, that's silly, you are looking at the binary in a folder and know it exists. What is happening is that the `PATH` variable doesn't list that directory, so the system never searches in that non-standard directory for this binary, thus reporting that the command cannot be found (and giving you an error in reply). 

Let's say you had tons of binaries you wanted to run out of that directory. A common example is to add a `bin` directory to your home folder. You can just modify the `PATH` variable to include that directory:

```
PATH="$PATH:~/bin"
```{{execute}}

After running the above command, you have re-set the `PATH` variable to be the same as whatever was already there (`$PATH`) *and* the additional directory (`~/bin`). Have a look:

```
echo $PATH
```{{execute}}

Now, any executables in your `~/bin` directory will be found and you can name them as commands.

# Exercise

What does the following output? Why?

```
echo $HOME
```{{execute}}

>>Q1: How do you see your environment variables?<<
=== env
