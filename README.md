![Build status](https://github.com/joonas-fi/youtube-dl-docker/workflows/Build/badge.svg)
[![Download](https://img.shields.io/docker/pulls/joonas/youtube-dl.svg?style=for-the-badge)](https://hub.docker.com/r/joonas/youtube-dl/)

Docker image for youtube-dl with FFMPEG included (so one can transmux to .mkv)


How to run
----------

```console
$ docker run --rm -it -v "$(pwd):/workspace" joonas/youtube-dl:TAG_FROM_DOCKERHUB URL-TO-VIDEO
```

Usually you'll map your host current dir (the `pwd` part) to `/workspace` inside the container to
have downloaded videos appear in your current directory.


Why run in a container
----------------------

- Less changes to your host system
- Decreased attack surface


Prior art
---------

There are many Docker images for `youtube-dl`, some probably pretty equivalent.

I needed latest `youtube-dl` version (to get a Finnish VOD site bugfix) and FFMPEG, and I wasn't sure
if I could find image (most were not up-to-date) with that combo.
