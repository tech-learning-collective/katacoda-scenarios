Every file that gets created comes with a default set of permissions. If you ever wanted to change that default set of permissions, you can do so with the umask command. This command takes the 3 bit permission set we see in numerical permissions. 

Instead of adding these permissions though, umask takes away these permissions. 

```
$ umask 021
```

In the above example, we are stating that we want the default permissions of new files to allow users access to everything, but for groups we want to take away their write permission and for others we want to take away their executable permission. The default umask on most distributions is 022, meaning all user access, but no write access for group and other users.

When you run the umask command it will give that default set of permissions on any new file you make. However, if you want it to persist you'll have to modify your startup file (.profile), but we'll discuss that in a later lesson.

## Exercise

1. Create a new file, then note its permissions.
1. Modify the umask and then create another new file.
1. Check the permissions once more on the new file, what do you expect to see?

>>Q1: What command is used to change default file permissions?<<
=== umask
