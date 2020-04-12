The `uniq` (unique) command is another useful tool for parsing text.

Let's say you had a file with lots of duplicates:

```
reading.txt
book
book
paper
paper
article
article
magazine
```

And you wanted to remove the duplicates, well you can use the `uniq` command:

```
$ uniq reading.txt
book
paper
article
magazine
```

Let's get the count of how many occurrences of a line:

<pre>$ uniq -c reading.txt
2 book
2 paper
2 article
1 magazine</pre>

Let's just get unique values:

<pre>$ uniq -u reading.txt
magazine</pre>

Let's just get duplicate values:

<pre>$ uniq -d reading.txt
book
paper
article
</pre>

`uniq` does not detect duplicate lines unless they are adjacent. For example, let's say you had a file with duplicates which are not adjacent:

<pre>
reading.txt
book
paper
book
paper
article
magazine
article
</pre>

<pre>$ uniq reading.txt
reading.txt
book
paper
book
paper
article
magazine
article</pre>

The result returned by `uniq` will contain all the entries unlike the very first example.

To overcome this limitation of `uniq` we can use `sort` in combination with `uniq`:

<pre>
$ sort reading.txt | uniq
article
book
magazine
paper</pre>

# Exercise

What result would you get if you tried `uniq -uc`?

>>Q1: What command would you use to remove duplicates in a file?<<
=== uniq
