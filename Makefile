
up:
	sudo docker-compose --env-file srcs/.env -f srcs/docker-compose.yml up -d --build

down:
	sudo docker-compose -f srcs/docker-compose.yml down

ps:
	sudo docker-compose -f srcs/docker-compose.yml ps

stop:
	sudo docker-compose -f srcs/docker-compose.yml stop

logs:
	sudo docker-compose -f srcs/docker-compose.yml logs

clean: down
	sudo rm -rf ../dataInception
	mkdir ../dataInception
	mkdir ../dataInception/mariadb
	mkdir ../dataInception/wordpress

fclean:
	sudo docker system prune -a -f

re: down clean up logs
