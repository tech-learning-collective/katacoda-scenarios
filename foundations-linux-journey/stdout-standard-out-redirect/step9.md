Similar to the `head` command, the `tail` command lets you see the last 10 lines of a file by default.

```
tail /var/log/syslog
```{{execute}}

As with `head`, you can change the number of lines you want to see.

```
tail -n 10 /var/log/syslog
```{{execute}}

Another great option you can use is the `-f` ("follow") flag, this will follow the file as it grows. Give it a try and see what happens. 

```
tail -f /var/log/syslog<
```{{execute}}

Your syslog file will be continually changing while you interact with your system and using tail `-f` you can see everything that is getting added to that file.

# Exercise

Look at the manual page for `tail` and read some of the other commands we didn't discuss. 

```
man tail
```{{execute}}

>>Q1: What is the flag used "to `tail` and follow" a file?<<
=== -f
