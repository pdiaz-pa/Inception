#docker stop $(docker ps -q)
#docker rm $(docker ps -a -q)
#docker rmi $(docker images -q)
#docker volume rm $(docker volume ls -q)

up:
	docker-compose up --build --remove-orphans

down:
	docker-compose down 
	 @rm -rf ~/data/mariadb/*

fdown:
	docker-compose down
	@rm -rf ~/data/mariadb/* && rm -rf ~/data/wordpress/*

clean:
	docker-compose down --rmi all
	

.PHONY: up down fdown clean
