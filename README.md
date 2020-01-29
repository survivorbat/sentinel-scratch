# Sentinel Image

This repository contains a relatively simple Dockerfile to build a small but practical docker container containing the Sentinel
framework.

## Prerequisites

You'll need Docker installed to use this image. 
In case you wish to work on developing this image further, it's advisable to also have Make installed to utilise the Makefile.

## Getting started

Using this image is as simple as running `docker run -it --rm -v $(pwd)/app survivorbat/sentinel-scratch <command>`. A few
examples:
- `docker run -it --rm -v $(pwd)/app survivorbat/sentinel-scratch test /app/tests/`
- `docker run -it --rm -v $(pwd)/app survivorbat/sentinel-scratch fmt /app/tests/`

### Development

This image can be build locally using `make build`.
