#!/bin/bash

cd $(dirname "$0")

ARCH=$(uname -m)

sudo apt-get remove -y automy-math automy-basic automy-vehicle automy-vision automy-lidar

# exit if any command below fails
set -e

cd math
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-math.deb
cd ..

cd basic
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-basic.deb
cd ..

cd vehicle
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-vehicle.deb
cd ..

cd vision
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-vision.deb
cd ..

cd lidar
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-lidar.deb
cd ..


