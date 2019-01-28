#!/bin/sh
# Run me with superuser privileges


SOURCE_FILE=/etc/apt/sources.list

update_repo() {
mv $SOURCE_FILE "$SOURCE_FILE.bk"
sudo cat >>$SOURCE_FILE <<EOF
deb http://security.debian.org/debian-security stretch/updates main
deb-src http://security.debian.org/debian-security stretch/updates main

deb http://deb.debian.org/debian stretch main
deb-src http://deb.debian.org/debian stretch main

deb http://deb.debian.org/debian stretch-updates main
deb-src http://deb.debian.org/debian stretch-updates main

# Debian 9 "Stretch"
deb http://httpredir.debian.org/debian/ stretch main contrib non-free
EOF
}

main {
  update_repo
  }
