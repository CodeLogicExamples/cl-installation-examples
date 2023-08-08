#!/usr/bin/env bash

PACKAGE_DIR='/opt/packages'

echo "deb [trusted=yes] file:///${PACKAGE_DIR}/cl-dependencies clpackagedir/ >> /etc/apt/sources.list.d/cl-packagedir.list"
dpkg-scanpackages ${PACKAGE_DIR}/cl-dependencies | gzip > ${PACKAGE_DIR}/cl-dependencies/cl-packages.gz
apt-get update
