#!/bin/bash
mkdir -p hiflow
cd hiflow
wget --no-check-certificate https://emcl-gitlab.iwr.uni-heidelberg.de/hiflow3.org/hiflow3/-/archive/v3_release/hiflow3-v3_release.tar.gz -O - | tar -xz
mv hiflow3-v3_release hiflow3-v3
cd ..
sudo docker-compose run hiflow3v3 /bin/bash -c "mkdir build; cd build;
cmake .. -DHIFLOW_CPP_ISO_STANDARD=c++17;
make -j$(nproc)"

