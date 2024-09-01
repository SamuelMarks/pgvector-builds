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
---

<small>

## License

Licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or <https://www.apache.org/licenses/LICENSE-2.0>)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or <https://opensource.org/licenses/MIT>)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.

</small>
