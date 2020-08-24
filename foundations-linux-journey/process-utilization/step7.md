These monitoring tools are good to look at when your machine is having issues, but what about machines that are having issues when you aren't looking. For those, you'll need to use a continuous monitoring tool, something that will collect, report and save your system activity information. In this lesson we will go over a great tool to use **sar**.

**Installing sar**
Sar is a tool that is used to do historical analysis on your system, first make sure you have it installed by installing the sysstat package **sudo apt install sysstat**.

**Setting up data collection**
Usually once you install sysstat, your system will automatically start collecting data, if it doesn't you can enable it by modifying the ENABLED field in /etc/default/sysstat.

**Using sar**

```
$ sudo sar -q
```

This command will list the details from the start of the day.

```
$ sudo sar -r
```

This will list the details of memory usage from the start of the day.

```
$ sudo sar -P
```

This will list the details of CPU usage. 

To see a view of a different day, you can go into /var/log/sysstat/saXX where XX is the day you want to view. 

```
$sar -q /var/log/sysstat/sa02
```

## Exercise

Install `sar` on your system and start collecting and analyzing your system resource utilization.

>>Q1: What is a good tool to use for monitoring system resources?<<
=== sar
