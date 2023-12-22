all : up

up :
	@docker-compose -f ./app/docker-compose.yml up -d
build : 
	@docker-compose -f ./app/docker-compose.yml up --build -d
down :
	@docker-compose -f ./app/docker-compose.yml down
stop :
	@docker-compose -f ./app/docker-compose.yml stop
start :
	@docker-compose -f ./app/docker-compose.yml start
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
	rm -rf ./app/src/*
	rm -rf ./app/mariadb/data/*

fclean: down clean
	docker rm -f $(docker ps -aq)
	docker rmi -f $(docker images -q)
	docker volume prune -f
	docker network prune -f
	docker system prune -a
