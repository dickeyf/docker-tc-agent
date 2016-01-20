# Dockerized TeamCity agent
This Dockerfile provide the base for dockerizing a TeamCity agent for the purpose of building using g++5.

# Usage
In order to build your dockerized agent, you will have to provide these files :
- agent.tar.gz (Execute packClient.sh to create this file.)
- jre-8u65-linux-x64.gz (Or change Dockerfile to use the jre of your choice...)
- buildAgent.properties (This file will need to be tailored, so the agent connects to your teamcity server.)

Once these files have been copied beside Dockerfile, you can execute build.sh to create the dockerized image.

