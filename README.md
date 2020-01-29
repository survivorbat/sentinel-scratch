# Sentinel Image

This repository contains a relatively simple Dockerfile to build a small but practical docker container containing the Sentinel
framework.

## Getting started

Using this image is as simple as running `docker run -it --rm -v $(pwd)/app survivorbat/sentinel-scratch <command>`. A few
examples:
- `docker run -it --rm -v $(pwd)/app survivorbat/sentinel-scratch test /app/tests/`
- `docker run -it --rm -v $(pwd)/app survivorbat/sentinel-scratch fmt /app/tests/`
