Although most of this course is about package management systems (the Batmans of package management), we mustn't forget about the Robins. Although very useful and reliable, they don't come with that sweet batmobile and utility belt.

Just like .exe is a single executable file, so is .deb and .rpm. You normally wouldn't see these if you use package repositories, but if you directly download packages, you will most likely get them in these popular format. Obviously, they are exclusive to their distributions, .deb for Debian based and .rpm for Red Hat based.

To install these direct packages, you can use the package management commands: rpm and dpkg. These tools are used to install package files, however they will not install the package dependencies, so if your package had 10 dependencies, you would have to install those packages separately and then their dependencies and so on and so forth. As you can see, that was one of the reasons that brought forth the full blown management systems that we will discuss this later.

Keep in mind that there will be countless times when you need to install, query or verify a package with one of these tools, so remember these commands.

**Install a package**

```

Debian: $ dpkg -i some_deb_package.deb
RPM: $ rpm -i some_rpm_package.rpm

```

The `i` stands for install. You can also use the longer format of `--install`.

**Remove a package**

```

Debian: $ dpkg -r some_deb_package.deb
RPM: $ rpm -e some_rpm_package.rpm

```

Debian: **r** for remove
RPM: **e** for erase

**List installed packages**

```

Debian: $ dpkg -l
RPM: $ rpm -qa

```

Debian: **l** for list
RPM: **q** for query and **a** for all

## Exercise

Find a program that you want to install on your system like Google Chrome and install it using one of these commands.

>>Q1: What is the package management tool for .deb files?<<
=== dpkg
