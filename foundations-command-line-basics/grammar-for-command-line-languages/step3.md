In a human language like English, the different words in a sentence relate to different parts of speech, such as the *subject*, the *verb*, and the *object*. We alredy know that in a command language like Bash, we are always ever making imperative statements, so there will always be a verb. For example, when we used the `help` command, the command itself was the verb!

However, much like human languages, context matters, and if it&rsquo;s not made explicit, the context determines things such as the subject and the object of the command. If the meaning of the command is not clear from the context, the interpreter will probably tell you by replying with an *error*. Let&rsquo;s practice this with two new commands, one that requires an explicit object and one that accepts an implicit object.

**Do this** in the command line interface of this practice lab:

1. Type `ls` (short for &ldquo;list folder contents&rdquo;) and press the <kbd>Return</kbd> or <kbd>Enter</kbd> key on your keyboard.
    ```sh
    ls
    ```{{execute}}

Like the `help` command, the `ls` command doesn&rsquo;t need any additional words, or *arguments*, to be meaningful, because it makes some assumptions about what those should be based on the current context. In this case, the implicit context is &ldquo;here,&rdquo; as in &ldquo;list the *current* folder&rsquo;s contents.&rdquo;

**Do this** in the command line interface of this practice lab:

1. Enter the `touch` command without any additional words, which is used for creating a new, blank file. This will return an error, so don&rsquo;t worry if you see your computer complain!
    ```sh
    touch
    ```{{execute}}

Unlike the `help` or `ls` commands, the `touch` command requires an explicit object (or a [&ldquo;direct object&rdquo;](https://en.wikipedia.org/wiki/Object_%28grammar%29#Types) to use a linguist&rsquo;s terminology). If you don&rsquo;t tell the command what file to create explicitly, it will not know which file you want to make, and it will therefore fail to make any files.

Instead of doing what you told it to, it came back with an *error*. Errors are the computer&rsquo;s way of telling you about a problem it encountered. Problems can arise even if you don&rsquo;t do anything wrong, but in this case the problem is that you didn&rsquo;t specify what file you wanted to make.

The computer&rsquo;s phrasing for this might not seem intuitive at first. It says, &ldquo;`missing file operand`&rdquo; rather than something more human-sounding, such as &ldquo;What file do you want me to make?&rsquo; but over time you&rsquo;ll probably come to appreciate the compactness of the computer&rsquo;s responses.

Let&rsquo;s help the computer out by specifying the name of the file we&rsquo;d like to be created. We do this by adding a second word to our `touch` command line:

**Do this** in the command line interface of this practice lab:

1. Enter the `touch` command again, but this time provide a name for a new file as the second word to the command. The file name must not contain any spaces, or else the Bash interpreter will think you want to create two files instead of one:
    ```sh
    touch my-new-file
    ```{{execute}}

Notice that, this time, the command produced no output at all. The computer did not reply to you. Instead, it simply performed the work you told it to do and is now waiting for your next command. Usually, on a command line, no news is good news!

If you now take a look at the graphical user interface in the second pane of this lab environment (above the command line interface), you&rsquo;ll see your new file was created.

The second word you supplied to the `touch` command is called an *argument* because it changes the behavior of the program based on whatever you specify there, much like the arguments to a mathematical function change the result of that function. Go ahead and create another file, but this time choose a name for the file yourself.

Now that you&rsquo;ve seen an example of a slightly more complex command, let&rsquo;s identify the various additional parts in an even more complex command.
