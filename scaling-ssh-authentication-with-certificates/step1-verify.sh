#!/bin/bash

keyfile=/etc/pki/ssh/ssh_host_signing_key_ed25519
[ -f "$keyfile" ] \
    && [ "root" = $(stat -c '%U' "$keyfile") ] \
        && [ 700 -eq $(stat -c '%a' $(dirname "$keyfile")) ] \
            && echo done
