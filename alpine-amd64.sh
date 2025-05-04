#!/usr/bin/env bash
set -e

# test run amd64 container on apple silicon via rosetta
docker run -it --entrypoint /bin/sh --rm --platform linux/amd64 alpine
