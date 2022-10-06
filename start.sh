#!/bin/bash -ex
# Start script for Craftopia called from docker

# Move steamcmd install to startup
if [ ! -f /app/steamcmd/steamcmd.sh ]
then
	# no steamcmd
	printf "SteamCMD not found, installing\n"
	mkdir /app/steamcmd/
	cd /app/steamcmd/
	wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
	tar -xf steamcmd_linux.tar.gz
	rm steamcmd_linux.tar.gz
fi
	

build=${BRANCH}

if [ ${BRANCH} == "public" ]
then
	# GA
	/app/steamcmd/steamcmd.sh +force_install_dir /app +login anonymous +app_update 1670340 +quit
else
	# Expermental 
	/app/steamcmd/steamcmd.sh +force_install_dir /app +login anonymous +app_update 1670340 -beta ${BRANCH} +quit
fi


# Launch Server
# Variables pulled from Docker environment
cd /app
./Craftopia.x86_64
