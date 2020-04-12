The `/etc/shadow` file is used to store information about user authentication. It requires superuser read permissions. 

```
sudo cat /etc/shadow
```{{execute}}

Running the above command may produce output including, for example:

```
root:MyEPTEa$6Nonsense:15000:0:99999:7:::
```

You'll notice that it looks very similar to the contents of `/etc/passwd`, however in the password field you'll see an encrypted password. The fields are separated by colons as followed:

1. Username
1. Encrypted password
1. Date of last password changed - expressed as the number of days since Jan 1, 1970. If there is a 0 that means the user should change their password the next time they login
1. Minimum password age - Days that a user will have to wait before being able to change their password again
1. Maximum password age - Maximum number of days before a user has to change their password
1. Password warning period - Number of days before a password is going to expire
1. Password inactivity period - Number of days after a password has expired to allow login with their password
1. Account expiration date - date that user will not be able to login
1. Reserved field for future use<

In most distributions today, user authentication doesn't rely on just the `/etc/shadow` file, there are other mechanisms in place such as PAM (Pluggable Authentication Modules) that replace authentication.

# Exercise

Take a look at the `/etc/shadow` file.
