#!/bin/bash

cd $(dirname "$0")

ARCH=$(uname -m)

sudo apt-get remove automy-math automy-basic automy-vehicle automy-vision

cd math
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-math-$(cat VERSION)-${ARCH}.deb
cd ..

cd basic
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-basic-$(cat VERSION)-${ARCH}.deb
cd ..

cd vehicle
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-vehicle-$(cat VERSION)-${ARCH}.deb
cd ..

cd vision
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-vision-$(cat VERSION)-${ARCH}.deb
cd ..

