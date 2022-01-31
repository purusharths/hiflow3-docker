# getting base image ubuntu
from ubuntu 

MAINTAINER Purusharth Saxena <purusharth.saxena@stud.uni-heidelberg.de>

RUN useradd -ms /bin/bash hiflow3

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

RUN apt-get update; \
    apt-get install -y wget vim cmake  build-essential libopenmpi-dev libtinyxml2-dev cmake cmake-curses-gui libboost-all-dev libmetis-dev

USER hiflow3

WORKDIR /home/hiflow3/hiflow3-v3_teaching/

