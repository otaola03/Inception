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
re : down fclean build

exec-n :
	docker exec -it nginx sh

exec-w :
	docker exec -it wordpress sh

fclean:
	rm -rf ./app/src/*

