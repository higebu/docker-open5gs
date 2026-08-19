# docker-open5gs

[![docker build](https://github.com/higebu/docker-open5gs/actions/workflows/docker.yml/badge.svg)](https://github.com/higebu/docker-open5gs/actions/workflows/docker.yml)

[Open5GS](https://github.com/open5gs/open5gs) and [UERANSIM](https://github.com/aligungr/UERANSIM) Docker images.

# Docker images

- [![higebu/open5gs](https://img.shields.io/docker/v/higebu/open5gs?label=higebu/open5gs&style=flat-square)](https://hub.docker.com/repository/docker/higebu/open5gs)
- [![higebu/open5gs-webui](https://img.shields.io/docker/v/higebu/open5gs-webui?label=higebu/open5gs-webui&style=flat-square)](https://hub.docker.com/repository/docker/higebu/open5gs-webui)
- [![higebu/ueransim](https://img.shields.io/docker/v/higebu/ueransim?label=higebu/ueransim&style=flat-square)](https://hub.docker.com/repository/docker/higebu/ueransim)

# Image tags

Images are built from upstream release tags rather than from the upstream
default branch.

- `latest` - the most recent upstream release
- `vX.Y.Z` - a specific upstream release, e.g. `v2.8.0`

The pinned versions are the `ARG OPEN5GS_VERSION` and `ARG UERANSIM_VERSION`
lines in each Dockerfile, so `docker build ./open5gs` reproduces the published
image. The workflow bumps them when upstream publishes a new release.

# docker compose

https://docs.docker.com/compose/install/

```shell
docker compose pull
docker compose up -d
docker compose down
```
