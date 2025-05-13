REPO=docker.io/gbeine/foundry

all: manifest build-amd64 build-arm64

build-amd64:
	podman build \
		--file=Dockerfile \
		--manifest=$(REPO):latest \
		--tag=$(REPO):amd64 \
		--platform=linux/amd64 \
		--build-arg=VERSION=$(VERSION)

build-arm64:
	podman build \
		--file=Dockerfile \
		--manifest=$(REPO):latest \
		--tag=$(REPO):arm64 \
		--platform=linux/arm64 \
		--build-arg=VERSION=$(VERSION)

manifest:
	podman manifest create $(REPO):latest

push: 
	podman tag $(REPO):latest $(REPO):$(VERSION)
	podman manifest push --all $(REPO):latest
	podman manifest push --all $(REPO):$(VERSION)

rm:
	podman manifest rm $(REPO):latest
