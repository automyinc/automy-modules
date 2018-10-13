#!/bin/bash

cd $(dirname "$0")

ARCH=$(uname -m)

dpkg -i math/${ARCH}/automy-math-$(cat math/VERSION)-${ARCH}.deb

dpkg -i basic/${ARCH}/automy-basic-$(cat basic/VERSION)-${ARCH}.deb

dpkg -i vnx-web/${ARCH}/vnx-web-$(cat vnx-web/VERSION)-${ARCH}.deb

