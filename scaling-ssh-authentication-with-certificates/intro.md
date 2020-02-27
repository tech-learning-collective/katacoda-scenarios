# Overview

This module walks you through the process of creating a simple, OpenSSH-based Public Key Infrastructure (PKI) for the purpose of authenticating SSH servers to connecting clients. It is part of [Tech Learning Collective](https://techlearningcollective.com/)&rsquo;s &ldquo;[Securing Our Servers: Basic Network Operations for Autonomous Communities](https://techlearningcollective.com/workshops/Securing-Our-Servers-Basic-Network-Operations-for-Autonomous-Communities)&rdquo; workshop as well as our [SEC101 (security fundamentals) course](https://techlearningcollective.com/courses/sec101/).

## Benefits of SSH Certificates

As a system administrator (server-side), using SSH certificates for host authentication enables you to more easily rotate SSH host keys on some periodic schedule without triggering SSH host key verification failures in clients. Certificate-based authentication is also at the heart of solutions such as SSH support in [Cloudflare Access](https://blog.cloudflare.com/public-keys-are-not-enough-for-ssh-security/), so what you learn here will help you in understanding and setting up those systems in your networks. Learn more about system administration in [Tech Learning Collective&rsquo;s SYS101 course](https://techlearningcollective.com/courses/sys101/).

As an SSH user (client-side), using SSH certificates for host authentication means you no longer have to remember the individual fingerprints of the SSH host keys that servers present to you when you connect to them. Instead, on each connection attempt, your SSH client refers to a single public key contained in a certificate issued by your organization&rsquo;s own Certificate Authority (CA) and checks to see whether the host key of the server you are connecting to was signed (approved) by that authority. This means manually managing entries in your `known_hosts` file for each host you connect to becomes a thing of the past, as does the initial &ldquo;Are you sure you want to continue connecting (yes/no)?&rdquo; question when you connect to a new SSH server for the first time.

## Workshop limitations

Topics not (currently) included in this workshop are:

* the converse, i.e., user authentication with SSH certificates.
* [certificate authentication with SSH products such as Tectia® Server](https://www.ssh.com/manuals/server-admin/64/serverauth-cert.html).

## Prerequisites

To complete this exercise, you should have:

* a basic understanding of asymmetric (public-key) cryptography, and
* a working knowledge of basic OpenSSH server administration when run on a GNU/Linux Operating System.

Once again, consider enrolling in Tech Learning Collective&rsquo;s SYS101 course or attending some networking- and system administration-related workshops if these topics are unfamiliar to you. Refer to [the Tech Learning Collective Events calendar](https://techlearningcollective.com/events/) for the latest information about upcoming workshops and other educational events.

Let&rsquo;s get started learning about SSH certificates.
