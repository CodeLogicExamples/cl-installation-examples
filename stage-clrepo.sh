#!/usr/bin/env bash

PACKAGE_DIR='/opt/packages'
mkdir ${PACKAGE_DIR}
chmod 766 ${PACKAGE_DIR}

echo "deb [trusted=yes] file:///${PACKAGE_DIR}/cl-dependencies clpackagedir/ >> /etc/apt/sources.list.d/clpackagedir.list"
dpkg-scanpackages
