
up:
	mkdir -p /home/ljerinec/data
	mkdir -p /home/ljerinec/data/mariadb
	mkdir -p /home/ljerinec/data/wordpress
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
	sudo rm -rf /home/ljerinec/data
	sudo docker volume rm srcs_mariadb_data srcs_wp_data

fclean: clean
	sudo docker system prune -a -f

re: clean up
