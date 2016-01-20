# Dockerized TeamCity agent
This Dockerfile provide the base for dockerizing a TeamCity agent for the purpose of building using g++5.

# Usage
In order to build your dockerized agent, you will have to provide these files :
- agent.tar.gz (Execute packClient.sh to create this file.)
- jre-8u65-linux-x64.gz (Or change Dockerfile to use the jre of your choice...)
- buildAgent.properties (This file will need to be tailored, so the agent connects to your teamcity server.)

## Steps
1. packClient.sh <full path to your teamcity install dir>  (Make sure you have access)
2. download the Java JRE as linux x64 tar.gz, then edit Dockerfile and change jre-8u65-linux-x64.gz to the file you downloaded.
3. edit buildAgent.properties, change the server's url so it connects to your teamcity master.
4. ./build.sh
5. ./create.sh
6. ./start.sh

After each reboot, you'll need to re-run ./start.sh to start the agent.
