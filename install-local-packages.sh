#!/usr/bin/env bash

# Globals
PACKAGE_DIR='dependencies'
#DEB_ARCHIVE_DIR='/var/cache/apt/archives/'
CL_VERSION='23.12.7'

# Install/Copy generic debian packages.
apt install -y ${PACKAGE_DIR}/*.deb
#mv ${PACKAGE_DIR}/*.deb ${DEB_ARCHIVE_DIR}/

# Install CodeLogic.
#apt install -y ${PACKAGE_DIR}/codelogic_${CL_VERSION}_all.deb
dpkg -i codelogic_${CL_VERSION}_all.deb
