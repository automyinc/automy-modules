#!/bin/bash

cd $1

./import.sh $3

./create_debian.sh

sudo dpkg -i $(uname -m)/$2-$(cat VERSION)-*

