#!/bin/sh
# script to restart network
# Fail on error
set -e
sudo service network-manager restart
