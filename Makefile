BUILD_ENV = docker build -t go-env:dev -f docker/Dockerfile .
RUN_ENV = docker run -it go-env:dev /bin/bash

.PHONY: build-env
build-env:
	$(BUILD_ENV)

.PHONY: run-env
run-env:
	$(RUN_ENV)