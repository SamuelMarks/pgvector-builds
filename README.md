pgvector builds
===============
[![Docker Image Version (tag)](https://img.shields.io/docker/v/samuelmarks/pgvector-builds/alpine_latest)](https://hub.docker.com/r/samuelmarks/pgvector-builds/tags)
[![docker_build](https://github.com/SamuelMarks/pgvector-builds/actions/workflows/docker_build.yml/badge.svg)](https://github.com/SamuelMarks/pgvector-builds/actions/workflows/docker_build.yml)

Builds for https://github.com/pgvector/pgvector

For Docker images, see: https://hub.docker.com/r/samuelmarks/pgvector-builds

## Instructions

```sh
git clone https://github.com/SamuelMarks/pgvector-builds
docker build . -f Dockerfile.alpine -t samuelmarks/pgvector-builds:alpine_latest
```

And to `push` up to hub.docker.com run:
```sh
docker push samuelmarks/pgvector-builds:alpine_latest
```
