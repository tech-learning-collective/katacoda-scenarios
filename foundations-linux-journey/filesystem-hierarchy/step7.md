When we want to automatically mount filesystems at startup we can add them to a file called `/etc/fstab` (pronounced "eff es tab" not "eff stab"), short for "filesystem table." This file contains a permanent listing of filesystems that are mounted, one for each line, with whitespace-separated fields. The tabular structure of this file is why it's called the filesystem table file or, occasionally, "the fstab database."

```

pete@icebox:~$ cat /etc/fstab
UUID=130b882f-7d79-436d-a096-1e594c92bb76 /               ext4    relatime,errors=remount-ro 0       1
UUID=78d203a0-7c18-49bd-9e07-54f44cdb5726 /home           xfs     relatime        0       2
UUID=22c3d34b-467e-467c-b44d-f03803c2c526 none            swap    sw              0       0

```

On each line representing one filesystem, the fields are ordered like so: 

1. UUID - Device identifier
1. Mount point - Directory the filesystem is mounted to
1. Filesystem type
1. Options - other mount options, see manpage for more details
1. Dump - used by the dump utility to decide when to make a backup, you should just default to 0
1. Pass - Used by fsck to decide what order filesystems should be checked, if the value is 0, it will not be checked

To add an entry, just directly modify the `/etc/fstab` file using the entry syntax above. Be careful when modifying this file, you could potentially make your life a little harder if you mess up.

## Exercise

Add the USB drive we've been working on as a entry in `/etc/fstab`, when you reboot you should still see it mounted. 

>>Q1: What file is used to define how filesystems should be mounted? <<
=== /etc/fstab
