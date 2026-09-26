.PHONY: build up down shell run logs clean

COMPOSE := docker compose
SERVICE := lerobot

## Build the Docker image
build:
	$(COMPOSE) build

## Start the container (detached)
up:
	$(COMPOSE) up -d

## Stop and remove the container
down:
	$(COMPOSE) down

## Interactive shell inside the container
shell:
	$(COMPOSE) run --rm $(SERVICE) bash

## Alias for shell (common habit)
run: shell

## Follow container logs
logs:
	$(COMPOSE) logs -f $(SERVICE)

## Remove image and build cache for this project
clean:
	$(COMPOSE) down --rmi local --volumes --remove-orphans
