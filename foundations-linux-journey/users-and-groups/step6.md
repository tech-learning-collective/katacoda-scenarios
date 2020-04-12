Most enterprise environments are using management systems to manage users, accounts and passwords. However, on a single machine computer there are useful commands to run to manage users.

# Adding Users

You can use the adduser or the useradd command. The adduser command contains more helpful features such as making a home directory and more. There are configuration files for adding new users that can be customized depending on what you want to allocate to a default user. 

```
sudo useradd bob
```{{execute}}

You'll see that the above command creates an entry in `/etc/passwd` for bob, sets up default groups and adds an entry to the `/etc/shadow` file.

# Removing Users

To remove a user, you can use the `userdel` command.

```
sudo userdel bob
```{{execute}}

This basically does its best to undo the file changes by useradd.

# Changing Passwords

```
passwd bob
```{{execute}}

This will allow you to change the password of yourself or another user (if you are root).

# Exercise

Create a new user then change their password and login as the new user.

>>Q1: What command is used to change a password?<<
=== passwd
