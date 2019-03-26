#!/usr/bin/env bash

ssserver -m chacha20-ietf-poly1305 \
    -p 443 \
    -k password \
    $*
