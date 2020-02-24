Whether you are using a command line interface (CLI) or a graphical user interface (GUI), you are invoking some metaphor to get things done. You may not have thought about it quite as explicitly before, but every time you look at your computer&rsquo;s so-called &ldquo;desktop,&rdquo; you&rsquo;ve invoked a metaphor to understand the information your computer is showing you. Obviously, your computer does not have a literal desk top; your computer might be *on* the top of a desk, but it is not, itself a desk, nor is a desk somewhere inside your computer.

Similarly, terms like &ldquo;folder&rsquo; and &ldquo;file&rdquo; are also not referring to literal manilla folders or pieces of paper located somewhere within the machine.

![](https://i.makeagif.com/media/5-24-2016/Q9RnQx.gif)

All of these terms are merely metaphors that help us understand the capabilities of the interface that we have been presented. The graphical user interface of a desktop, in which files are *represented* by visual icons of paper, is how the computer lets us know that these objects can be moved from one place to another, organized into related groupings by being placed in file-container-things called folders, and so on. If you already know what a folder and a piece of paper is, then you can apply everything you know about those things to the *metaphorical* folders and files in your computer.

All interfaces are ultimately simply metaphors just like this, and the command line interface is no different. Instead of using the metaphor of an office workspace with a desk, folders, and files, the command line interface uses the metaphor of an office *assistant* to whom you can make requests and issue commands. Instead of directly manipulating the files, you ask your assistant (your computer) to do something with those files and folders.

This may seem ineffecient at first, but consider how the metaphor changes your capabilities:

* In the graphical user interface, you have to directly manipulate all the objects to which you refer by physically pointing and clicking on them. In essence, you are restricted to using only one tip of one finger on one of your hands (called your *pointer* or *mouse cursor*).
* In the command line interface, you have the complete expressive power of spoken language.

If this still seems inefficient, imagine ordering your favorite meal at a restaurant without being able to speak or to ask questions of the wait staff. Go to the supermarket and try checking out while using only one tip of one finger on one of your hands. Contrast this with bringing along an assistant to whom you can say, &rdquo;Pay the cashier. Yes, that amount is okay.&ldquo;

The world is a lot easier to navigate when you can use your words to effect changes in your environment. This is what the command line enables that graphical user interfaces cannot compete with.

**Do this using the graphical user interface** to see an example of the above in practice. As you are doing this, **count the number of times you have to press the mouse buttons, or move your hands between the mouse and the keyboard.**

1. Create a new file called `example-file-1.txt` in the `root` folder. (You can right-click or command-click on the `/root` folder icon in the graphical editor to reveal a contextual menu with options for creating or deleting files.)
1. Open this file and write a short sentence inside of it, like, "The quick brown fox jumped over the lazy dog."
1. Create a second file called `example-file-2.txt` in the `root` folder. Copy the contents of the first file and paste it into the second file.
1. Now delete both files.

Now repeat the same excerise, but using the command line. Here are the commands you need to type, but you can simply click once on the commands to copy them directly into the command line interface and run them:

```
echo "The quick brown fox jumped over the lazy dog." > example-file-1.txt
cp example-file-{1,2}.txt
rm !$
```{{execute}}

In three utterances, totaling exactly 108 keypresses (way less than a tweet!), you have done what took almost two dozen clicks.

The above three commands (`echo`, `cp`, and `rm`) along with the various *shell* features used above may seem daunting right now, but so does hearing words in any foreign language before your ear becomes accustomed to them. The takeaway for now, is simply that it&rsquo;s much more powerful to be able to describe what you&rsquo;d like done, rather than having to do it all yourself.

The rest of this course is all about those three commands and the many more that make up the vocabulary and grammar of the command line interface &ldquo;language&rdquo; so that you can begin to instruct your computer with your words, rather than the one tip of one finger represented by a single cursor limited to pressing pre-existing buttons on the limited space offered by your video monitor.
