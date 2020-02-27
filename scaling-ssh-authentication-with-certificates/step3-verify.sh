#!/bin/bash

if [ 0 -ne $(grep -q '^@cert-authority host01' /root/.ssh/known_hosts) ]; then
    exit 1 # Validation failed, SSH known hosts database misconfigured.
fi

echo done
