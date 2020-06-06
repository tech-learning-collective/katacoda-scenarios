#!/bin/bash

# Make the Katacoda environment a little bit more like a
# default GNOME Desktop Environment installation. We merely
# need a facsimile of a real environment to make hte point.
mkdir Desktop
mkdir Documents
mkdir Downloads
mkdir Music
mkdir Pictures
mkdir Public
mkdir Videos

# Make some example files show up in the Desktop folder.
touch Desktop/example-file-{1..5}.txt
