#docker stop $(docker ps -q)
#docker rm $(docker ps -a -q)
#docker rmi $(docker images -q)
#docker volume rm $(docker volume ls -q)

up:
	docker-compose -f srcs/docker-compose.yml up --build --remove-orphans

down:
	docker-compose -f srcs/docker-compose.yml down

fdown:
	docker-compose -f srcs/docker-compose.yml down
	rm -rf /home/pdiaz-pa/data/mariadb/* && rm -rf /home/pdiaz-pa/data/wordpress/*

clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all
	docker volume rm mdbvolume wpvolume
	

.PHONY: up down fdown clean
