#!/bin/bash

cd $(dirname "$0")

ARCH=$(uname -m)
DIST=$1

rpm -Uv basic/${ARCH}/automy-basic-$(cat basic/VERSION)-${ARCH}-${DIST}.rpm

rpm -Uv math/${ARCH}/automy-math-$(cat math/VERSION)-${ARCH}-${DIST}.rpm

