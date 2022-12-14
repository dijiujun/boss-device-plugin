IMAGE_VERSION = v1
REGISTRY = docker.io/dijj
IMAGE = ${REGISTRY}/boss-device-plugin:${IMAGE_VERSION}

.PHONY: build deploy

build:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o build/boss cmd/server/app.go

buildImage:
	docker build -t ${IMAGE} .

kindLoad:
	kind load docker-image ${IMAGE}

pushImage:
	docker push ${IMAGE}

deploy:
	helm install boss deploy/helm/boss

upgrade:
	helm upgrade boss deploy/helm/boss

dry-run:
	helm install boss deploy/helm/boss --dry-run
