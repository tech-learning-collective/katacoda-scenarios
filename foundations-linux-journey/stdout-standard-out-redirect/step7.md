The `paste` command is similar to the `cat` command, it merges lines together in a file. Let's create a new file called `sample2.txt` with four words, "`The quick brown fox`," each on their own line:

```
cat <<EOF > sample2.txt
The
quick
brown
fox
EOF
```{{execute}}

Let's combine all these lines into one line: 

```
paste -s sample2.txt
```{{execute}}

The default delimiter for paste is TAB, so now there is one line with TABs separating each word.

Let's change this delimiter (by using the `-d` option) to something a little more readable: 

```
paste -d ' ' -s sample2.txt
```{{execute}}

Now everything should be on one line delimited by spaces.

# Exercise

Try to paste multiple files together, what happens?

>>Q1: What flag do you use with paste to make everything go on one line?<<
=== -s
