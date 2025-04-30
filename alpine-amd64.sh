#!/usr/bin/env bash
set -e

# how to run amd64 container on apple silicon via rosetta
# note that linux is required or darwin/amd64 will be attempted but does not exist.
docker run -it --entrypoint /bin/sh --rm --platform linux/amd64 alpine
