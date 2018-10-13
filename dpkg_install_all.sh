#!/bin/bash

cd $(dirname "$0")

ARCH=$(uname -m)

cd math
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-math-$(cat VERSION)-${ARCH}.deb
cd ..

cd basic
./create_debian.sh
sudo dpkg -i ${ARCH}/automy-basic-$(cat VERSION)-${ARCH}.deb
cd ..

cd vnx-web
./create_debian.sh
sudo dpkg -i ${ARCH}/vnx-web-$(cat VERSION)-${ARCH}.deb
cd ..

