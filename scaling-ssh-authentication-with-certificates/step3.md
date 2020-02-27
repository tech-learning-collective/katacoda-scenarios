With the server's configuration complete, your final task is to configure your SSH client to validate the SSH host certificate presented by the server when you connect to it.

To do this, you'll need a copy of the CA's public signing key that we generated earlier. In a real-life scenario, this will be provided to you by your infrastructure provider, but in this workshop you can simply make a copy of this file in your home folder:

```sh
cp /etc/pki/ssh/ssh_host_signing_key_ed25519.pub ~/
```{{execute}}

It is the public key contained in this file that we will need to tell our SSH client to trust when accepting SSH host certificates during the SSH connection process. This is very similar to the process of trusting a plain host key in that we simply need to add an entry (a line) to our SSH known hosts database (our user's `~/.ssh/known_hosts` file) noting the new public key and marking it as a CA's public key instead of a plain host entry.

**Do this** to add your PKI's SSH CA signing public key as a trusted host in your SSH known hosts database:

1. Prepend the hostname or names of all the servers you will connect to that should use this new CA public key for authentication purposes:
    ```sh
    echo -n "host01 " | cat - ~/ssh_host_signing_key_ed25519.pub > tmp_known_hosts
    ```{{execute}}
    We use the name `host01` to indicate that when we run a command such as `ssh host01`, we'd like our SSH client to use this public key to verify the host certificate we receive from the server to which we are ultimately connected. In a real-life scenario, you might enter a pattern such as `*.example.com` to indicate that any subdomain of `example.com` should use this CA public key. (Any valid SSH host pattern will work here.) Note also the final space after the hostname list. Any whitespace character (`␠`) is valid here other than line separators, in conformance with the SSH `known_hosts` file format documented in the `sshd(8)` manual page.
1. Finally, prepend the `@cert-authority` marker at the beginning of the CA's public key, and write the output to your user's `~/.ssh/known_hosts` file:
    ```sh
    echo -n "@cert-authority " | cat - ~/tmp_known_hosts > ~/.ssh/known_hosts
    ```{{execute}}
    This marker indicates that the entry refers to the public key of a Certificate Authority rather than the fingerprint of an SSH server's public host key. Once again, notice the important trailing space character.

Have a look at your SSH known hosts database file to see what the completed line looks like:

```sh
grep '^@cert-authority host01' ~/.ssh/known_hosts
```{{execute}}

With your client configured, you can now test your configuration by initiating an SSH connection that will be authenticated using the new SSH host certificate.
