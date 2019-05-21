#!/bin/sh
# Run me with superuser privileges


SOURCE_FILE=/etc/apt/sources.list

update_repo() {
mv $SOURCE_FILE "$SOURCE_FILE.bk"
sudo cat >>$SOURCE_FILE <<EOF
deb http://httpredir.debian.org/debian buster main
deb http://httpredir.debian.org/debian buster-updates main
deb http://security.debian.org buster/updates main
deb http://httpredir.debian.org/debian/ buster main contrib non-free
EOF
}

main (){
    update_repo
}
