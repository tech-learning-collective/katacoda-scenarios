Now that both the SSH server and client are correctly configured to use SSH host certificates, you can simply make a connection to the SSH server as usual.

To ensure that we are using the host certificate rather than the plain host key, though, let's first remove any pre-existing knowledge of the appropriate server's host key fingerprints from our SSH known hosts database:

```sh
ssh-keygen -R host01
```{{execute}}

Now we are ready to make a connection to the SSH server that will be authenticated with the server's host certificate:

```sh
ssh host01
```{{execute}}

Notice that even though `host01` was not found in your SSH known hosts database, you were still able to successfully connect to the SSH server at `host01` without being prompted to accept its host key fingerprint. This was possible because you configured your SSH client to trust host certificates that are signed by the CA that you trusted in the previous step.

To see this in action, view SSH's verbose connection output by using the `-v` flag when connecting, and see if you can spot the lines that indicate the server is being authenticated through the use of its host certificate instead of its plain SSH host key.

```sh
ssh -v host01
```{{execute}}

Congratulations. You now understand how to scale SSH authentication with host certificates and have a basic understanding of how SSH host certificates work.
