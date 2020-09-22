The `column` command will format its input into easily readable columns. For example, say you have a simple comma-separated values (CSV) file like this in a file called `player-scores.csv`:

```
First Name,Last Name,Player Number,Total Points Scored
Alice,Miller,14,48
Bob,Smith,19,36
Jane,Doe,64,65
```

It might be easier to read if you pretty-print the data like this:

```
$ column -t -s "," player-scores.csv 
First Name  Last Name  Player Number  Total Points Scored
Alice       Miller     14             48
Bob         Smith      19             36
Jane        Doe        64             65
```

If you don't want to see a certain column, you can use `colrm` to remove the characters in that column:

```
$ column -t -s "," player-scores.csv | colrm 23 38
First Name  Last Name Total Points Scored
Alice       Miller    48
Bob         Smith     36
Jane        Doe       65
```

The numbers `23` and `38` represent the character columnar positions of the start and end of the characters to remove. You can easily find these numbers using the `wc` utility you learned about earlier:

```
$ echo "First Name  Last Name " | wc -c
      23
$ echo "First Name  Last Name  Player Number " | wc -c
      38
```

A more powerful way to work with "columnar" data is the `awk` utility. In Awk, each line is called a *record* and each record has zero or more *fields*, which are delimeted by a *field separator* pattern. Each time a line matches a given pattern, one or more actions are run that can do things such as change the data in the record or print information to the terminal.

Awk is really a whole mini-programming language unto itself, and highly worth learning. For now, though, we'll use it in the trivial example of printing only the columns we want by specifying a field separator using the `-F` option, setting it to the literal comma (`,`) used in our CSV file, and having the action(s) between the braces (the `{` and `}`) simply `print` the columns ("fields") we want (columns number one with `$1`, column two with `$2`, and four with `$4`) with literal commas in between: 

```
$ awk -F , '{ print $1 "," $2 "," $4; }' player-scores.csv | column -t -s ","
First Name  Last Name  Total Points Scored
Alice       Miller     48
Bob         Smith      36
Jane        Doe        65
```

Note that we didn't specify any explicit pattern for the action to match, so `awk` assumed we wanted to match all of the records (all of the lines) in the input.
