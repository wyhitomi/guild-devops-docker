#!/bin/bash

# create a bridge network
docker network create -d bridge my_bridge

# connect postgres to the new network
docker run -d --net=my_bridge --name db postgres

# create another container
docker run -it -P --name nginx nginx

# recover nginx ip
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' nginx

# access db and ping nginx ip
docker exec -it db bash

# connect nginx my_bridge
docker network connect my_bridge nginx
