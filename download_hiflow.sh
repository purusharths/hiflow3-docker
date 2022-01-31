#!/bin/bash
mkdir -p hiflow
cd hiflow
wget --no-check-certificate https://emcl-gitlab.iwr.uni-heidelberg.de/hiflow3.org/hiflow3/-/archive/v3_teaching/hiflow3-v3_teaching.tar.gz -O - | tar -xz
sudo docker-compose run hiflow3 /bin/bash -c "mkdir build; cd build;
cmake .. -DHIFLOW_CPP_ISO_STANDARD=c++17;
make -j$(nproc)"

