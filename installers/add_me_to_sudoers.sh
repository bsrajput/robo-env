#!/bin/sh
# Author: Abhishek Anand Amralkar
# Run me with superuser privileges
# This scripts add me to the sudoers file

add_me () {
   echo 'aaa  ALL=(ALL:ALL) ALL' >> /etc/sudoers
}


main () {
    add_me
}
