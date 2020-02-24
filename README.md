# Tech Learning Collective - Katacoda Scenarios

> :beginner: **If you are a student looking for where you can actually take these courses, visit [TechLearningCollective.com/foundations](https://techlearningcollective.com/foundations/).**

This repository contains Tech Learning Collective's free, self-paced learning labs in the form of [Katacoda](https://katacoda.com/) scenarios and courses. The repository includes a [Vagrant](https://vagrantup.com/)-managed development environment intended to make it easy for experienced sysadmins and developers to contribute to Tech Learning Collective's free educational materials.

## Contributing

To help develop our Katacoda scenario content, you can use the provided development environment:

1. Install a virtual machine hypervisor such as [VirtualBox](https://virtualbox.org/).
1. Install the [Vagrant](https://vagrantup.com/) hypervisor automation utility.
1. Clone this repository:
    ```sh
    git clone https://github.com/tech-learning-collective/katacoda-scenarios.git
    ```
1. Bring the provided development environment online:
    ```sh
    cd katacoda-scenarios
    vagrant up
    ```

Once up, check out the example scenarios in the `~vagrant/scenario-examples` directory.

## Katacoda content structure

Katacoda defines a standard structure for its educational material.

* The most basic unit of learning is called a *step*.
* Steps are grouped into a *scenario*. Scenarios can have one or more steps, along with an optional *intro* and *finish* step, which bookends the scenario.
* Scenarios can optionally be grouped into a *course*. Courses can have one or more scenarios.

A Katacoda course is defined by a *pathway file*, which is a JSON formatted document containing an ordered list of all the scenarios in the course. Pathway files are named after the course they define and end in `-pathway.json`. The scenarios in a course can be specific to the course, or they can refer to any other scenario published on Katacoda, whether they belong to a different course or not.
