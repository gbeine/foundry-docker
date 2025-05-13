all:
	podman build \
		--file=Dockerfile \
		--tag=docker.io/gbeine/foundry:${VERSION} \
		--tag=docker.io/gbeine/foundry:latest \
		--platform=linux/amd64 \
		--build-arg=VERSION=${VERSION}
