Remember everything in Linux is a file, even processes. Process information is stored in a special filesystem known as the /proc filesystem.

```
$ ls /proc
```

You should see multiple values in here, there are sub-directories for every PID. If you looked at a PID in the ps output, you would be able to find it in the /proc directory.

Go ahead and enter one of the processes and look at that file:

```
$ cat /proc/12345/status
```

You should see process state information and well as more detailed information. The /proc directory is how the kernel is views the system, so there is a lot more information here than what you would see in ps.

## Exercise

No exercises for this lesson.

>>Q1: What filesystem stores process information?<<
=== /proc
