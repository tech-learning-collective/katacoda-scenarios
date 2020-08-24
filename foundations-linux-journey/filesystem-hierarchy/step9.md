There are a few tools you can used to see the utilization of your disks: 

```

pete@icebox:~$ df -h
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/sda1       6.2G  2.3G  3.6G  40% /

```

The `df` command shows you the utilization of your currently mounted filesystems. Its `-h` flag gives you a human readable format. You can see what the device is, and how much capacity is used and available. 

Let's say your disk is getting full and you want to know what files or directories are taking up that space, for that you can use the `du` command. 

```
du -h
```{{execute}}

This shows you the disk usage of the current directory you are in, you can take a peek at the root directory with `du -h /` but that can get a little cluttered.

Both of these commands are so similar in syntax it can be hard to remember which one to use, to check how much of your *disk* is *free* use `df`. To check *d*isk *u*sage, use `du`. 

## Exercise

Look at your disk usage and free space with both `du` and `df`. 

>>Q1: What command is use to show how much space is free on your disk?<<
=== df
