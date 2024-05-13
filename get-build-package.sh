#!/bin/bash

# Script that installs build-package.sh to compile glibc packages

BRANCH="master"

git clone --depth 1 -b ${BRANCH} --single-branch https://github.com/mark8773/termux-packages.git

for i in build-package.sh clean.sh packages x11-packages scripts; do
	cp -r ./termux-packages/${i} ./
done

rm -fr termux-packages
