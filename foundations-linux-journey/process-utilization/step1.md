In this course, we'll go over how to read and analyze the resource utilization on your system, this lesson shows some great tools to use when you need to track what a process is doing. 

**top**

We've discussed top before, but we're going to dig into the specifics of what it's actually displaying. Remember top is the tool we used to get a real time view of the system utilization by our processes:

```

top - 18:06:26 up 6 days,  4:07,  2 users,  load average: 0.92, 0.62, 0.59
Tasks: 389 total,   1 running, 387 sleeping,   0 stopped,   1 zombie
%Cpu(s):  1.8 us,  0.4 sy,  0.0 ni, 97.6 id,  0.1 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem:  32870888 total, 27467976 used,  5402912 free,   518808 buffers
KiB Swap: 33480700 total,    39892 used, 33440808 free. 19454152 cached Mem

  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND                             
 6675 patty    20   0 1731472 520960  30876 S   8.3  1.6 160:24.79 chrome                             
 6926 patty    20   0  935888 163456  25576 S   4.3  0.5   5:28.13 chrome 

```

Let's go over what this output means, you don't have to memorize this, but come back to this when you need a reference.

**1st line: This is the same information you would see if you ran the uptime command (more to come)**

The fields are from left to right:
<ol>
* Current time
* How long the system has been running
* How many users are currently logged on
* System load average (more to come)
</ol>

**2nd line: Tasks that are running, sleeping, stopped and zombied**

**3rd line: Cpu information**

<ol>
* us: user CPU time - Percentage of CPU time spent running users’ processes that aren’t niced.
* sy: system CPU time - Percentage of CPU time spent running the kernel and kernel processes
* ni: nice CPU time - Percentage of CPU time spent running niced processes
* id: CPU idle time - Percentage of CPU time that is spent idle
* wa: I/O wait - Percentage of CPU time that is spent waiting for I/O. If this value is low, the problem probably isn’t disk or network I/O 
* hi: hardware interrupts - Percentage of CPU time spent serving hardware interrupts
* si: software interrupts - Percentage of CPU time spent serving software interrupts
* st: steal time - If you are running virtual machines, this is the percentage of CPU time that was stolen from you for other tasks
</ol>

**4th and 5th line: Memory Usage and Swap Usage**

**Processes List that are Currently in Use**

<ol>
* PID: Id of the process
* USER: user that is the owner of the process
* PR: Priority of process
* NI: The nice value
* VIRT: Virtual memory used by the process
* RES: Physical memory used from the process
* SHR: Shared memory of the process
* S: Indicates the status of the process: S=sleep, R=running, Z=zombie,D=uninterruptible,T=stopped
* %CPU - this is the percent of CPU used by this process
* %MEM - percentage of RAM used by this process
* TIME+ - total time of activity of this process
* COMMAND - name of the process
</ol>

You can also specify a process ID if you just want to track certain processes:

```
$ top -p 1
```

## Exercise

Play around with the top command and see what processes are using the most resources.

>>Q1: What command displays the same output as the first line in top?<<
=== uptime
