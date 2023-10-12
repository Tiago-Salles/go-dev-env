BUILD_ENV = docker build -t go-env:dev -f docker/Dockerfile .
RUN_ENV = docker run -it go-env:dev /bin/bash
DOCKER_PRUNE = docker system prune -a --volumes

.PHONY: build-env
build-env:
	$(BUILD_ENV)

.PHONY: run-env
run-env:
	$(RUN_ENV)

.PHONY: reset-env
reset-env:
	$(DOCKER_PRUNE)
	$(BUILD_ENV)
	$(RUN_ENV)

.PHONY: start-env
start-env:
	$(BUILD_ENV)
	$(RUN_ENV)