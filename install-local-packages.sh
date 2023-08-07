#!/usr/bin/env bash

# Globals
PACKAGE_DIR='/opt/packages'
DEB_ARCHIVE_DIR='/var/cache/apt/archives/'
CL_VERSION='23.12.7'

# Install/Copy generic debian packages.
#apt install -y ${PACKAGE_DIR}/*.deb
#mv ${PACKAGE_DIR}/*.deb ${DEB_ARCHIVE_DIR}/

# Install docker.
dpkg -i ${PACKAGE_DIR}/containerd.io_*.deb \
  ${PACKAGE_DIR}/docker-ce_*.deb \
  ${PACKAGE_DIR}/docker-ce-cli_*.deb \
  ${PACKAGE_DIR}/docker-buildx-plugin_*.deb \
  ${PACKAGE_DIR}/docker-compose-plugin_*.deb

# Install docker-compose.
mv ${PACKAGE_DIR}/docker-compose-Linux-x86_64 ${PACKAGE_DIR}/docker-compose
mv ${PACKAGE_DIR}/docker-compose /usr/local/bin/
chmod +x /usr/local/bin/docker-compose

# Install open-jdk 11.
mkdir /usr/lib/jvm
tar -zxf ${PACKAGE_DIR}/openjdk-11+28_linux-x64_bin.tar.gz -C /usr/lib/jvm
update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-11-openjdk-amd64/bin/java 100
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-11-openjdk-amd64/bin/javac 100
update-alternatives --display java
update-alternatives --display javac

# Install CodeLogic.
apt install -y ${PACKAGE_DIR}/codelogic_${CL_VERSION}_all.deb
