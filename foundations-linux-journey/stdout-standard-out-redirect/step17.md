Sometimes, it's useful to generate your own text as input for or in addition to some other text you're working with. One frequent need is to generate sequences of numbers, such as for a loop or other numbering scheme. The `seq` (short for *sequence*) command is perfect for this.

## The `seq` command

The `seq` command will print numbers, one per line. You can control how the number is displayed with its `-f` option, what character will separate each number with its `-n` option (the newline `\n` is the default), and what character will signal the end of the sequence with its `-t` (*termination*) option. Here's how to count from 1 to 10 using `seq`:

```
seq 1 10
```

If you supply three numeric arguments rather than two, you can skip over some numbers. For example, here's the same sequence range but only printing the even numbers:

```
seq 2 2 10
```

You can also count "backwards" (down from a number) by switching the start and end and providing negative values for the increment:

```
seq 10 -2 2
```

## The `jot` command

What if you need to print stuff other than sequential integers? For that, use `jot`, which is similar to `seq` but can also print ordinary strings or words. The `jot` command also understands decimal numbers and can even generate random-ish data.

> :warning: Don't use `jot` for cryptographic purposes. It's not *that* clever.

For example, here's how to use `jot` instead of `seq` to print the integers from one to ten:

```
jot 10 1
```

Whereas with `seq` the first argument is the low end of the range and the second argument is the high end, `jot` expects the number of repititions (how many numbers to print) first, and then where to start from second. You can get the same output with simply `jot 10` since `1` is the default starting point.

Where `jot` really shines, though, is most easily demonstrated with its third argument. If we were to say `jot 10 1 10`, we'd still just have the numbers between 1 and 10, same as `seq 1 10`. But if we instead say `jot 10 1 5`, notice that we end up with ten output values, but each value is repeated twice:

```
$ jot 10 1 5
1
1
2
2
3
3
4
4
5
5
```

This might not be what you first expect but if you read closely, you'll see it's exactly what we asked for: 10 repititions, beginning from 1 and ending at 5. Since there are only half as many possible values as there are repititions (there are only five numbers between 1 and 5 inclusive), each value gets output twice.

We can use this to, for example, automatically calculate the values at certain points in a range. Here are decimal values for the percentages equivalent to 0%, 25%, 50%, and 100%, for example:

```
$ jot 5 0 1.00
0.00
0.25
0.50
0.75
1.00
```

The `jot` command is also useful because you can combine the output values with a word. Say you wanted to generate a bunch of test usernames. You can easily have `jot` "jot" them down for you by using the `-w` ("word") option. Here, we generate a list of ten example users:

```
$ jot -w Exampleuser 10
Exampleuser1
Exampleuser2
Exampleuser3
Exampleuser4
Exampleuser5
Exampleuser6
Exampleuser7
Exampleuser8
Exampleuser9
Exampleuser10
```

Maybe you don't want sequenial data, but random data. Add the `-r` flag to your `jot` command:

```
$ jot -w Exampleuser -r 10
Exampleuser19
Exampleuser39
Exampleuser20
Exampleuser31
Exampleuser6
Exampleuser42
Exampleuser64
Exampleuser5
Exampleuser57
Exampleuser12
```

There's more you can do with `jot`, but this is enough to get you started. Read the `jot` manual page (`man jot`) for more complex examples.

## The `rs` command

Another useful text manipulation utility is the `rs` (short for "reshape") command. It takes whatever text you give it and treats each blank-separated string as an element to rearrange before printing its output. Put another way, this makes it easy to create columnar, or tabular displays from structured input (such as that produced by `seq` or `jot`). For example, let's print the example usernames from earlier in two columns instead of one:

```
$ jot -w ExampleUser 10 | rs 5
ExampleUser1   ExampleUser2
ExampleUser3   ExampleUser4
ExampleUser5   ExampleUser6
ExampleUser7   ExampleUser8
ExampleUser9   ExampleUser10
```

As you can see, `rs` takes a string as its input, in this case via the pipe (`|`) from the previous command, and reshapes its output to produce five rows instead of 10. We could also have said `rs 5 2` but since all ten items fit in two columns of five rows each, we didn't have to supply the second argument.

If instead of five rows we wanted five columns, though, we would need to say `rs 2` (or `rs 2 5` if we're being explicit):

```
$ jot -w ExampleUser 10 | rs 2
ExampleUser1   ExampleUser2   ExampleUser3   ExampleUser4   ExampleUser5
ExampleUser6   ExampleUser7   ExampleUser8   ExampleUser9   ExampleUser10
```

If you don't supply any number of rows or columns yourself, `rs` guesses what would work best based on the size of your terminal. This means you can easily condense the output of many commands that would otherwise cause your terminal to scroll too quickly by simply piping them to `rs`. Try, for example `who | rs`.
