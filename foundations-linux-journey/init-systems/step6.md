We won't get into the details of writing systemd unit files. We will however go over a brief overview of a unit file and how to manually control units. 

Here is a basic service unit file: foobar.service

```

[Unit]
Description=My Foobar
Before=bar.target

[Service]
ExecStart=/usr/bin/foobar

[Install]
WantedBy=multi-user.target

```

This is a simple service target, at the beginning of the file we see a section for `[Unit]`, this allows us to give our unit file a description as well as control the ordering of when to activate the unit. The next portion is the `[Service]` section, under here we can start, stop or reload a service. And the `[Install]` section is used for dependency. This is only the tip of the iceberg for writing systemd files, so I implore you to read up on the subject if you want to know more. 

Now, let's get into some commands you can use with systemd units: 

**List units**

```
$ systemctl list-units
```

**View status of unit**

```
$ systemctl status networking.service
```

**Start a service**

```
$ sudo systemctl start networking.service
```

**Stop a service**

```
$ sudo systemctl stop networking.service
```

**Restart a service**

```
$ sudo systemctl restart networking.service
```

**Enable a unit**

```
$ sudo systemctl enable networking.service
```

**Disable a unit**

```
$ sudo systemctl disable networking.service
```

Again, you have yet to see how much depth systemd gets into, so read up on it if you want to learn more.

## Exercise

View the unit statuses and start and stop a few services. What do you observe?

>>Q1: What is the command to start a service named peanut.service?<<
=== sudo systemctl start peanut.service
