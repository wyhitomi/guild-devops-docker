#!/bin/bash

docker run -it -P --name data-volume -v data-volume:/data debian bash

docker volume create named-data-volume
docker run -it -P --name named-data-volume -v named-data-volume:/data debian bash
