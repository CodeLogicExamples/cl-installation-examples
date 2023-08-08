#!/usr/bin/env bash

echo "deb [trusted=yes] file:///${PACKAGE_DIR}/cl-dependencies clpackagedir/ >> /etc/apt/sources.list.d/clpackagedir.list"
dpkg-scanpackages ${PACKAGE_DIR}/cl-dependencies
