BUILD_DEV_ENV = docker build -t go-env:dev -f docker/Dockerfile.dev .
RUN_DEV_ENV = docker run -it go-env:dev /bin/sh

.PHONY: build-dev-env
build-dev-env:
	$(BUILD_DEV_ENV)

.PHONY: run-dev-env
run-dev-env:
	$(RUN_DEV_ENV)