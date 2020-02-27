Without SSH certificates, authenticating an SSH server is usually done by noting its host key's fingerprint in your user's `.ssh/known_hosts` file. The first time you connect to an SSH server using a plain host key for authentication, you'll see a prompt asking you to confirm the connection. Try this now:

```sh
ssh host01
```{{execute}}

Accept the connection by answering `yes`:
```sh
yes
```{{execute}}

This is called Trust On First Use (TOFU) and, if you accepted the connection, you will have added a line to your "known hosts database," typically a file called `known_hosts` in your `~/.ssh` directory containing some information about this connection.

```sh
cat .ssh/known_hosts || echo "You do not yet have an SSH known hosts database."
```{{execute}}

If the server's SSH host key changes in the future, your SSH client can now issue a warning because the host key fingerprints will no longer match. This is called a *host key verification failure* and is intended to prevent Machine-in-the-Middle (MitM) and various other forms of traffic interception attacks. However, rotating cryptographic keys is generally considered good security practice, so it's also possible that a host key verification failure simply means that your infrastructure has been updated. In practice, it's often a hassle for users to go through this TOFU confirmation step on each new machine or user account they use, and this amount of explicit coordination between SSH administrators and SSH users imposes significant operational costs for large organizations. SSH certificates are a good way to solve these problems.

Before you can use an SSH certificate as an SSH server's host key, you must create an SSH keypair with which you will sign your other host keys. This special-purpose keypair is often called a Certificate Authority key (CA key) or, more colloquially, a "signing keypair."

The safety of this keypair is extremely important because these keys will be used to approve SSH host keys for all the other SSH servers in your infrastructure. In this example, we're only using one SSH server as an example, so we'll be generating and storing the signing keypair on our single server, but in a real-life scenario you would want to generate and store the CA keys in a far more secure location, such as a secured administrator's workstation.

To actually generate the keypair itself, we will use the `ssh-keygen(1)` tool, just as we would with any other SSH key generation task. This is because the only meaningful distinction between a "regular" SSH keypair and a CA keypair is the way we use the keys we generate. The keys we generate for the purpose of signing a server's host keys are not fundamentally different than any other keypair.

**Do this** to create your SSH CA keys:

1. Create a directroy to store our new signing keys:
    ```sh
    mkdir -p /etc/pki/ssh
    ```{{execute}}
1. As mentioned earlier, the keys in this directory are extremely sensitive, so ensure this directory is only readable by the `root` user:
    ```sh
    chmod -R 700 /etc/pki/ssh
    ```{{execute}}
1. Generate a new, strong SSH keypair for the purpose of signing SSH server host keys. When you execute the `ssh-keygen` command below, you'll be asked for a password to protect your keys. It's critical that this password be a strong one, because in a production environment these keys would be extraordinarily sensitive and valuable.
    ```sh
    ssh-keygen -t ed25519 -f /etc/pki/ssh/ssh_host_signing_key_ed25519 -C 'SSH CA Root Signing Key'
    ```{{execute}}
    The above command creates a keypair whose key type (`-t`) is [`ed25519`](https://en.wikipedia.org/wiki/EdDSA#Ed25519) and whose file contains a comment (`-C`) indicating the purpose of the key ("`SSH CA Root Signing Key`"). The pair of keyfiles constituting the keypair will be created in files (`-f`) in the `/etc/pki/ssh` directory, named `ssh_host_signing_key_ed25519` and `ssh_host_signing_key_ed25519.pub`.

Now that you've generated your CA's signing keypair and protected them on your server's filesystem, we can use them to sign existing or new host keys for SSH servers in your fleet.
