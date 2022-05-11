#docker stop $(docker ps -q)
#docker rm $(docker ps -a -q)
#docker rmi $(docker images -q)
#docker volume rm $(docker volume ls -q)

up:
	docker compose up

down:
	docker-compose down 
#	 @rm -rf ~/data/mariadb

fdown:
	docker-compose down
#	@rm -rf ~/data

clean:
	docker-compose down --rmi all
	

.PHONY: up down fdown clean
