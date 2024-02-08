MARIADB_PATH=/home/jperez/data/DB
WORDPRESS_PATH=/home/jperez/data/wordpress

all : up

up :
	@docker-compose -f ./srcs/docker-compose.yml up -d
build : 
	@docker-compose -f ./srcs/docker-compose.yml up --build -d
down :
	@docker-compose -f ./srcs/docker-compose.yml down
stop :
	@docker-compose -f ./srcs/docker-compose.yml stop
start :
	@docker-compose -f ./srcs/docker-compose.yml start
status :
	@docker ps
re : down clean build


exec-n :
	docker exec -it nginx sh
exec-w :
	docker exec -it wordpress sh
exec-m :
	docker exec -it mariadb sh

clean:
	rm -rf $(MARIADB_PATH)/*
	rm -rf $(WORDPRESS_PATH)/*

fclean: down clean
	docker volume prune -f
	docker image prune -a
	docker network prune -f
	# docker rm $(docker ps -a -f status=exited -q)
	docker system prune -a
