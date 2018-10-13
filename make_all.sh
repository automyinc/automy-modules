#!/bin/bash

cd math
./create_debian.sh
cd ..

cd basic
./create_debian.sh
cd ..

cd vnx-web
./create_debian.sh
cd ..

cd vnx-examples
./make.sh
cd ..

