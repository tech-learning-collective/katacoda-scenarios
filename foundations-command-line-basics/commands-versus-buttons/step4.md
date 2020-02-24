Using a command line interface requires more than just knowing what commands are available to you. It requires you to think differently about how you should go about interacting with your computer than you may be used to. The most striking of these differences is that you must &ldquo;use your words&rdquo; to instruct the computer what to do rather than pressing buttons that you can already see on screen.

This may seem ineffecient at first, but consider how the metaphor of speaking to a computerized assistant instead of pointing at things in your immediate vicinity changes your capabilities.

* In the graphical user interface, you have to directly manipulate all the objects to which you refer by physically pointing and clicking on them. In essence, you are restricted to using only one tip of one finger on one of your hands (called your *pointer* or *mouse cursor*). Moreover, you have no access to anything outside of your immediate reach. If you cannot see it or touch it, you cannot manipulate it.
* In the command line interface, you have the complete expressive power of spoken language. You can use symbolism and other metaphors to express any idea that you have the words for. Moreover, you have all the words you know at your disposal at any time, even if they refer to things that are far away or that you cannot currently see.

If using your words still seems inefficient, another way to think about it is like this: imagine ordering a meal at a restaurant without being able to speak, or to ask questions of the wait staff. How would you do it? Maybe you&rsquo;d point to the item in the menu. What if you have a dietary restriction or an allergy that the kitchen needs to know about? How would you communicate that to your server? The more complex your interaction needs to be, the more trouble you&rsquo;ll have if you can&rsquo;t use verbal communication to express yourself.

As another example, imagine going to the supermarket and trying to check out while using only one tip of one finger on one of your hands. Contrast this with bringing along an assistant to whom you can say, &ldquo;Pay the cashier. Yes, that amount is okay.&rdquo;

It&rsquo;s clear that the world is a lot easier to navigate when you can use your words to effect changes in your environment. That&rsquo;s just as true in digital spaces (&ldquo;cyberspace&rdquo;) as it is in physical spaces. This ability to use words to interact with the things that exist in digital spaces, like your files and software programs, is what the command line enables that graphical user interfaces cannot compete with.

**Do this using the graphical user interface** to see an example of the above in practice. As you are doing this, count the number of times you have to press the mouse buttons, or move your hands between the mouse and the keyboard.

1. Create a new file called `example-file-1.txt` in the `root` folder. (You can right-click or command-click on the `/root` folder icon in the graphical editor to reveal a contextual menu with options for creating or deleting files.)
1. Open this file and write a short sentence inside of it, like, "The quick brown fox jumped over the lazy dog."
1. Create a second file called `example-file-2.txt` in the `root` folder. Copy the contents of the first file and paste it into the second file.
1. Now delete both files.

Now repeat the same excerise, but using the command line. Here are some commands that perform equivalent actions. Remember that you can simply click once on the command block below to copy them directly into the command line interface and run them:

```
echo "The quick brown fox jumped over the lazy dog." > example-file-1.txt
cp example-file-{1,2}.txt
rm !$
```{{execute}}

In three utterances, totaling exactly 108 keypresses (way less than a tweet!), you have done what took almost two dozen clicks. Not only is this method faster, it is also far less likely to result in mistakes. That is, it is less likely that there will be differences between the two files because, by expressing your intent in the natural-language form of the idea &ldquo;copy the contents of this file to that file&rdquo; instead of the mechanical movements of selecting text, you are delegating the responsibility of handling the mundane work to your assistant (the computer).

The above three commands (`echo`, `cp`, and `rm`) along with the various *shell* features used above may seem daunting right now, but so does hearing words in any foreign language before your ear becomes accustomed to them. The takeaway for now, is simply that it&rsquo;s much more powerful to be able to describe what you&rsquo;d like done, rather than having to do it all yourself.

The rest of this course is all about those three commands and the many more that make up the vocabulary and grammar of the command line interface &ldquo;language&rdquo; so that you can begin to instruct your computer with your words, rather than the one tip of one finger represented by a single cursor that can only press pre-existing buttons on the limited space offered by your video monitor.
