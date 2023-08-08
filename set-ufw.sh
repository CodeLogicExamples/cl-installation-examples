#!/usr/bin/env bash

ufw default deny outgoing
ufw allow ssh
ufw enable
