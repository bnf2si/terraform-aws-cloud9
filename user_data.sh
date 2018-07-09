#!/bin/bash
set -x
apt-get update

#
# Coud9 setup
#
apt-get -y install python2.7
ln -s /usr/bin/python2.7 /usr/bin/python

apt-get -y install nodejs-legacy

# clean up
apt-get clean