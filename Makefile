all: init up

init:
	@mkdir -p ~/data ~/data/mariadb ~/data/wordpress

up:
	@docker compose -f srcs/docker-compose.yml up --build

down:
	@docker compose -f srcs/docker-compose.yml down

re: down fclean all

fclean:
	@docker system prune -a -f
	@if [ $(docker volume ls -q) ]; then \
		@docker volume rm $(docker volume ls -q); \
	fi
	@sudo rm -rf ~/data
