#!/bin/bash
docker create -v /data --name data_container debian /bin/true

docker run -it --volumes-from data_container --name app1 debian bash

docker run -it --volumes-from data_container --name app2 ubuntu bash
