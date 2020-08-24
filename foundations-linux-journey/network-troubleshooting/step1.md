The Internet Control Message Protocol (ICMP) is part of the TCP/IP protocol suite, it used to send updates and error messages and is an extremely useful protocol used for debugging network issues such as a failed packet delivery.

Each ICMP message contains a type, code and checksum field. The type field is the type of ICMP message, the code is a sub-type and describes more information about the message and the checksum is used to detect any issues with the integrity of the message.

Let's look at some common ICMP Types:

* Type 0 - Echo Reply
* Type 3 - Destination Unreachable
* Type 8 - Echo Request
* Type 11 - Time Exceeded

When a packet can't get to a destination, Type 3 ICMP message is generated, within Type 3 there are 16 code values that will further describe why it can't get to the destination: 

* Code 0 - Network Unreachable
* Code 1 - Host Unreachable

These messages will make more sense as we use some network troubleshooting tools.

>>Q1: What is the ICMP type for echo request?<<
=== 8
