We've already discussed viewing our routing tables with the route command, if you wanted to add or remove routes you can do so manually.

**Add a new route**

```

$ sudo route add -net 192.168.2.1/23 gw 10.11.12.3

```

**Delete a route**

```

$ sudo route del -net 192.168.2.1/23 

```

You can also perform these changes with the **ip** command:

**To add a route**
```

$ ip route add 192.168.2.1/23 via 10.11.12.3

```

**To delete a route**
```

$ ip route delete 192.168.2.1/23 via 10.11.12.3
or
$ ip route delete 192.168.2.1/23

```

## Exercise

There are no exercises for this lesson but you can read more information on commands discussed here in the man pages

```
$ man route
```

```
$ man ip-route
```

>>Q1: What is the command flag to delete a route?<<
=== del
