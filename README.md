# craftopia-server
Docker container for a Craftopia Dedicated Server

Build to create a containerized version of the dedicated server for Craftopia 
https://store.steampowered.com/app/1307550/Craftopia/
 
 
Build by hand
```
git clone https://github.com/antimodes201/craftopia-server.git
docker build -t antimodes201/craftopia-server:latest .
``` 
 
Docker Pull
```
docker pull antimodes201/craftopia-server
```
 
Docker Run with defaults 
change the volume options to a directory on your node
 
```
docker run -it -p 6587:6587/udp -p 6587:6587 \
-v /app/docker/temp-vol:/app \
--name craftopia \
antimodes201/craftopia-server:latest
```
 
If you would like to run an expirmental beta version use the build environmentl setting
 
```
docker run -it -p 6587:6587/udp -p 6587:6587 \
-v /app/docker/temp-vol:/app \
-e BUILD="expirmental" \
--name craftopia \
antimodes201/craftopia-server:latest
```
 
Currently exposed environmental variables and their default values
- BUILD default
- GAME_PORT 6587
- TZ America/New_York
 
#HappyGaming