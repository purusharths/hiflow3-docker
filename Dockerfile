# getting base image ubuntu
from ubuntu 

MAINTAINER Purusharth Saxena <purusharth.saxena@stud.uni-heidelberg.de>

RUN useradd -ms /bin/bash hiflow3

# RUN mkdir /home/hiflow3

#WORKDIR /home/hiflow3

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata

RUN apt-get update; \
    apt-get install -y wget vim cmake  build-essential libopenmpi-dev libtinyxml2-dev cmake cmake-curses-gui libboost-all-dev libmetis-dev
# install.sh and execute once. and put in hiflow host
#    wget --no-check-certificate https://emcl-gitlab.iwr.uni-heidelberg.de/hiflow3.org/hiflow3/-/archive/v3_teaching/hiflow3-v3_teaching.tar.gz -O - | tar -xz;   \ 
# RUN   cd hiflow3-v3_teaching; 
#      mkdir build; \
#      cd build; \
#      touch somefile; \
#     cmake .. -DHIFLOW_CPP_ISO_STANDARD=c++17; \
#     make -j$(nproc)

USER hiflow3

WORKDIR /home/hiflow3/hiflow3-v3_teaching/
# RUN cmake .. -DHIFLOW_CPP_ISO_STANDARD=c++17;

