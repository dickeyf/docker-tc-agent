FROM ubuntu:14.04

RUN sudo dpkg --add-architecture i386
RUN apt-get update && apt-get install -fy software-properties-common autoconf:i386 pkg-config:i386 && add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt-get update && apt-get install -fy gcc-5:i386 g++-5:i386 cpp-5:i386 make:i386
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 90

RUN mkdir /teamcity && cd /teamcity
ADD agent.tar.gz /teamcity/
ADD jre-8u65-linux-x64.gz /teamcity/
ADD run.sh /teamcity/
COPY buildAgent.properties /teamcity/buildAgent/conf/buildAgent.properties

WORKDIR /teamcity/buildAgent

CMD ["/teamcity/run.sh"]
