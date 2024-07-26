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

## Links

* [Foundry VTT](https://foundryvtt.com/)
* [Docker Container](https://hub.docker.com/r/gbeine/foundry)
* [Gerrit Beine](https://gerritbeine.de/)
