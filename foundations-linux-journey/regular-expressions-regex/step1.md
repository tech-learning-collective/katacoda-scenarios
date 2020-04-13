*Regular expressions* are a powerful tool to do pattern based selection. It uses special notations similar to those we've encountered already such as the `*` wildcard. 

We'll go through a couple of the most common regular expressions, these are almost universal with any programming language.

Well use this phrase as our test string:

```
sally sells seashells 
by the seashore
```

# 1. Beginning of a line with `^`

```
^by
```

would match the line "`by the seashore`" because that line begins with (`^`) the text `by`.

# 2. End of a line with `$`

```
seashore$
```

would match the line "`by the seashore`" because that line ends with (`$`) the text `seashore`.

# 3. Matching any single character with `.`

```
b.
```

would match `by` because `y` is a character that would be matched by `.` and `b` comes immediately before that character in the input string.

# 4. Bracket notation with `[]` and `()`

This can be a little tricky, brackets allow us to specify characters found within the bracket. 

```
d[iou]g
```
would match: `dig`, `dog`, and `dug`.

The previous anchor tag `^` when used in a bracket means anything except the characters within the bracket. In other words, it negates the match.

```
d[^i]g
```

would match: `dog` and `dug`, but *not* `dig`.

Brackets can also use ranges to increase the amount of characters you want to use. 

```
d[a-c]g
```

will match patterns like `dag`, `dbg`, and `dcg`, because `a-c` is a range of characters between `a` and `c`, inclusive.

Be careful though, as character ranges in brackets are case sensitive:

```
d[A-C]g
```

will match `dAg`, `dBg` and `dCg`, but *not* `dag`, `dbg` or `dcg`.

And those are some basic regular expressions.

# Exercise

Try to combine regular expressions with `grep` and search through some files.

```
grep [regular expression here] [file]
```

>>Q1: What regular expression would you use to match a single character?<<
=== .
