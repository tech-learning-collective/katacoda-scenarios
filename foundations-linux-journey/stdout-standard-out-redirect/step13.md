The tr (translate) command allows you to translate a set of characters into another set of characters. Let's try an example of translating all lower case characters to uppercase characters. 

```
tr a-z A-Z
hello
```{{execute}}

As you can see we made the ranges of a-z into A-Z and all text we type that is lowercase gets uppercased:

```
HELLO
```

# Exercise

Try the following command what happens? 

```
tr -d ello
hello
```{{execute}}

>>Q1: What command is used to translate characters?<<
=== tr
