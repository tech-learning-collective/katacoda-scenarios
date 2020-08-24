We've brought up NAT (network address translation) before but didn't touch upon it, when we are working on our network, does that mean that the Internet can see our IP address? Not quite.

NAT makes a device like our router act as an intermediary between the Internet and private network. So only a single, unique IP address is required to represent an entire group of computers.

Think of NAT is like a receptionist in a large office, if someone wants to contact you, they only know the number to the whole office, the receptionist would then have to look for your extension number and forward the call to you.

**How does it work?**
 
A simple case would look like this:

1. Patty wants to connect to www.google.com, so her machine sends this request through the router
1. The router takes that request and opens its own connection to google.com, then it sends Patty's request once it makes a connection
1. The router is the intermediary between Patty and www.google.com. Google doesn't know about Patty instead all it can see is the router.

NAT and packet routing in general can get pretty ugly, but we won't dive into the specifics.

>>Q1: What is used to represent a single private address to the Internet?<<
=== NAT
