# A docker container for Foundry VTT

---

**!! You need a valid license for running Foundry VTT !!**

---

## Starting Foundry VTT

A directory for the data is required.
Otherwise, Foundry VTT will store the data in an anonymous volume. 

`docker run -v <foundry-data-folder>:/data docker.io/gbeine/foundry:latest`

or

`podman run -v <foundry-data-folder>:/data docker.io/gbeine/foundry:latest`

## Building the image yourself

Of course, you can use the `Dockerfile` to build a local image.

To do this, you can use either the `Makefile` based on podman by running

`make VERSION=12.343`

where VERSION is the version number of you current Foundry VTT.

Otherwise you can build manually by running

`docker build --build-arg=VERSION=12.343 --tag=local/foundryvtt --plattform=linux/amd64`

## Links

* [Foundry VTT](https://foundryvtt.com/)
* [Docker Container](https://hub.docker.com/r/gbeine/foundry)
* [Gerrit Beine](https://gerritbeine.de/)
