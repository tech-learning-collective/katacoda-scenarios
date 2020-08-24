systemd (yup, all lowercase) is slowly becoming the emerging standard for init. If you have a `/usr/lib/systemd` directory, you're most likely using systemd.

systemd uses goals to get your system up and running. Basically you have a target that you want to achieve and this target also has dependencies that we need to achieve. systemd is extremely flexible and robust, it does not follow a strict sequence to get processes started. Here's what happens during the typical systemd boot:

<ol>
* First, systemd loads it's configuration files, usually located in `/etc/systemd/system` or `/usr/lib/systemd/system`
* Then it determines its boot goal, which is usually default.target
* systemd figures out the dependencies of the boot target and activates them</l>
</ol>

Similar to Sys V runlevels, systemd boots into different targets:

* `poweroff.target` - shutdown system
* `rescue.target` - single user mode
* `multi-user.target` - multiuser with networking
* `graphical.target` - multiuser with networking and GUI
* `reboot.target` - restart

The default boot goal of `default.target` usually points to the `graphical.target`. 

The main object that systemd works with are known as *units*. systemd doesn't just stop and start services, it can mount filesystems, monitor your network sockets, etcetera, and because of that robustness it has different types of units it operates. The most common units are:

* Service units - these are the services we've been starting and stopping, these unit files end in `.service`
* Mount units - These mount filesystems, these unit files end in `.mount`
* Target units - These group together other units, the files end in `.target`

For example, let's say we boot into our `default.target`, well this target groups together the `networking.service` unit, `crond.service` unit, etc, so once we activate a single unit, everything below that unit gets activated as well.

>>Q1: What type of systemd unit is used to group together other units?<<
=== target
