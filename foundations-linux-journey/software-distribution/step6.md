Ah, the Batmans of package management, these systems come with all the fixins to make package installation, removal and changes easier, including installing package dependencies. Two of the most popular management systems is **yum** and **apt**. Yum is exclusive to the Red Hat family and apt is exclusively to the Debian family.

**Install a package from a repository**

```

Debian: $ apt install package_name
RPM: $ yum install package_name

```

**Remove a package**

```

Debian: $ apt remove package_name
RPM: $ yum erase package_name

```

**Updating packages for a repository**

It's always best practice to update your package repositories so they are up to date before you install and update a package.

```

Debian: apt update; apt upgrade
RPM: yum update

```

**Get information about an installed package**

```

Debian: apt show package_name
RPM: yum info package_name

```

## Exercise

Run through each of these package commands and see the output you receive.

>>Q1: What command is used to show package information on a Debian system?<<
=== apt show
