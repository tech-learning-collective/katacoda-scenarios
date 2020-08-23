As we learned previously, files have different permissions or file modes. Let's look at an example:

```
$ ls -l Desktop/
drwxr-xr-x 2 pete penguins 4096 Dec 1 11:45 .
```

There are four parts to a file's permissions. The first part is the filetype, which is denoted by the first character in the permissions, in our case since we are looking at a directory it shows `d` for the filetype. (Yes! Directories, or folders, are a kind of file; they are simply a file whose contents is interpreted as a set of references pointing to other files.) Most commonly you will see a dash (`-`), which means the file being listed is a regular file.

The next three parts of the file mode are the actual permissions. The permissions are grouped into 3 bits each. The first 3 bits are *user permissions* (sometimes also called "*owner*" permissions), then *group permissions*, and then *other permissions* (or sometimes called "*world*" or "*everyone (else)*" permissions). I've added spaces in the representation below to make it easier to differentiate which bits are which:

```
d rwx r-x r-x
```

Each character represent a different permission: 
* `r`: readable
* `w`: writable
* `x`: executable (basically an executable program)
* `-`: empty (i.e., not set)

So in the above example, we see that the user `pete` has read, write, and execute permissions on the file, because `pete` is the file's owner. Any user account that is a member of the group `penguins` has read and execute permissions. And finally, the other users (everyone else) has read and execute permissions. 

## Exercise

Use the `ls -l` command on multiple files and recite their permissions, user (owner), and group. 

>>Q1: What is the letter symbol that represents the permission bit for an executable file?<<
=== x
