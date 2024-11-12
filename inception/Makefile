DOCKER_COMPOSE_FILE = ./srcs/docker-compose.yml

all: up

up:
	sudo docker compose -f $(DOCKER_COMPOSE_FILE) up --build

down:
	docker compose -f $(DOCKER_COMPOSE_FILE) -down

clean:
	docker compose -f $(DOCKER_COMPOSE_FILE) down --rmi all

fclean: clean
	docker system prune -af
	docker volume prune -f
	docker network prune -f
	sudo rm -rf ~/data/wordpress/* && sudo rm -rf ~/data/mariadb/*
re: fclean all

.PHONY: all down clean re