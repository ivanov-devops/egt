CONTAINERNAME =


.PHONY: help start stop build init restart push up down

help:
	@echo "Makefile help:"
	@echo
	@echo " make push    - Push the container(s)"
	@echo " make build   - Build the container(s)"
	@echo
	@echo " make start   - Stop the container(s)"
	@echo " make stop    - Stop the container(s)"
	@echo " make restart - Restart the container(s)"
	@echo
	@echo " make init    - Initial envirnoment setup"
	@echo " make down    - Destory the setup"
	@echo

push:
	docker-compose push ${CONTAINERNAME}

build:
	docker-compose build ${CONTAINERNAME}

start:
	docker-compose start ${CONTAINERNAME}

stop:
	docker-compose stop ${CONTAINERNAME}

up:
	docker-compose up -d

down:
	docker-compose down

restart: stop start

init: build up
