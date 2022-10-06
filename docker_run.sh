#!/bin/bash
# Sample run script.  Primarly used in build / testing

docker rm craftopia
docker run -it -p 27000-27030:27000-27030/udp -p 27036:27036/udp -p 4380:4380/udp -p 6587:6587/udp \
-p 6587:6587 -p 27015-27030:27015-27030 -p 27036-27037:27036-27037 \
-v /app/docker/temp-vol:/app \
--name craftopia \
antimodes201/craftopia-server:latest
