In addition to modifying permissions on files, you can also modify the group and user ownership of the file as well. 

**Modify user ownership**

```
$ sudo chown patty myfile
```

This command will set the owner of myfile to patty.

**Modify group ownership**

```
$ sudo chgrp whales myfile
```

This command will set the group of myfile to whales.

**Modify both user and group ownership at the same time**
If you add a colon and groupname after the user you can set both the user and group at the same time.

```
$ sudo chown patty:whales myfile
``` 

## Exercise

Modify the group and user of some test files. Afterwards take a look at the permissions with `ls -l`.

>>Q1: What command do you use to change user ownership?<<
=== chown
