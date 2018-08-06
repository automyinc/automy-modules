#!/bin/bash

cd $(dirname "$0")

ARCH=$(uname -m)
DIST=$1

dpkg -i basic/${ARCH}/automy-basic-$(cat basic/VERSION)-${ARCH}-${DIST}.deb

dpkg -i math/${ARCH}/automy-math-$(cat math/VERSION)-${ARCH}-${DIST}.deb

