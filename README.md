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

Once up, check out the example scenarios in the dev environment's `~vagrant/scenario-examples` directory.

## Katacoda content structure

Katacoda defines a standard structure for its educational material.

* The most basic unit of learning is called a *step*.
* Steps are grouped into a *scenario*. Scenarios can have one or more steps, along with an optional *intro* and *finish* step, which bookends the scenario.
* Scenarios can optionally be grouped into a *course*. Courses can have one or more scenarios.

A Katacoda course is defined by a *pathway file*, which is a JSON formatted document containing an ordered list of all the scenarios in the course. Pathway files are named after the course they define and end in `-pathway.json`. The scenarios in a course can be specific to the course, or they can refer to any other scenario published on Katacoda, whether they belong to a different course or not.

## Katacoda Markdown extensions

Katacoda Scenario content is written in a [superset](https://www.katacoda.com/docs/scenarios/markdown-syntax) of [Markdown](https://www.markdownguide.org/) syntax. Unfortunately, this means [GitHub Flavored Markdown](https://github.github.com/gfm/), the currently supported dialect of Markdown by GitHub.com, does not fully recognize several of the Katacoda-specific extensions, which results in rendering inconsistencies when viewed on the GitHub website. For this reason, we recommend a plain text editor such as `vim` or `emacs` for editing Scenario content.

Notable Katacoda markdown extensions include:

### `{{execute}}` instruction

This instruction enables integration between Markdown content and the Katacoda in-browser Terminal emulator, allowing a user to click or tap on the code to automatically paste that code into their Katacoda Terminal. For example:

<pre>
```
echo Some command.
```{{execute}}
</pre>

The Katacoda `{{execute}}` instruction can also be associated with an inline code block:

```
Try looking up the manual page for `curl` using the command `man curl`{{execute}}.
```

### `{{copy}}` instruction

Similar to the [`{{execute}}` instruction](#execute-instruction), the `{{copy}}` instruction allows a user to click or tap on the code to copy it to their system clipboard. Its syntax is the same as the `{{execute}}` instruction. For example:

<pre>
```
https://example.com:8080/some/very/long/path/that/would/be/annoying/to/type/manually.html
```{{copy}}
</pre>

This instruction can also be associated with an inline code block.

### Quiz questions and answers

Katacoda supports inline interactive quiz elements that can be included as any step within the scenario. The Quiz format supports different question and answer styles. Users cannot proceed until they have answered all the questions correctly.

To define a question, a single line of text is surrounded with the quiz instruction (`>>` and `<<`), then a question label, followed by a colon (`:`). For example, to create a quiz question labeled `Q1` asking, "`Is the Earth round?`" use the following Katacoda Scenario Markdown syntax:

```
>>Q1: Is the Earth round?<<
```

Each question must also provide an answer key. The answer key also serves to indicate what kind of question is being asked, either free-form or multiple choice. Free-form questions display a text input box to the user and ask them to type their answer. Multiple choice questions display a set of radio buttons or checkboxes and ask the user to select their answer from the provided options.

For more information, see the [Quiz example in the Katacoda Scenario Examples repository](https://github.com/katacoda/scenario-examples/blob/master/quiz/step1.md).

> :bulb: Use the [`katacodify.ex`](katacodify.ex) script to run an initial batch transformation of some common Markdown tutorial styles into the above format. For example:
>
> ```sh
> # Automatically convert the formatting of both original files.
> ex original-file-1.md original-file-2.md < katacodify.ex
> ```
