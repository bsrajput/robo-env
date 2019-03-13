#!/bin/bash
# Run me with superuser privileges
# This scripts add me to the sudoers file

add_me () {
   echo 'aaa  ALL=(ALL:ALL) ALL' >> /etc/sudoers
}


main () {
    add_me
}
