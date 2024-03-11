.PHONY: up

up:
	sudo docker-compose --env-file srcs/.env -f srcs/docker-compose.yml up -d

down:
	sudo docker-compose -f srcs/docker-compose.yml down

ps:
	sudo docker-compose -f srcs/docker-compose.yml ps

stop:
	sudo docker-compose -f srcs/docker-compose.yml stop

logs:
	sudo docker-compose -f srcs/docker-compose.yml logs

clean:
	sudo docker system prune -a -f

re: down clean up logs
