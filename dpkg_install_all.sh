#!/bin/bash

cd $(dirname "$0")

ARCH=$(uname -m)

sudo apt-get remove automy-math automy-basic vnx-web

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

cd vnx-web
./clean_all.sh
./create_debian.sh
sudo dpkg -i ${ARCH}/vnx-web-$(cat VERSION)-${ARCH}.deb
cd ..

