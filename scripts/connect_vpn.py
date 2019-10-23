#!/usr/bin/python3
import sys
import subprocess
import argparse
import os


def parse_args():
    parser = argparse.ArgumentParser(description='Environment for the VPN')
    parser.add_argument('--env', action="store", required=True)
    return parser.parse_args()

if __name__ == '__main__':
    cli_args = parse_args()
    env = cli_args.env

def connect_vpn(env):
    if (env == 'staging'):
        os.chdir('path')
        print('Staging VPN Connection initiated')
        cmd = 'sudo openvpn --config {0}-abhishek.amralkar.ovpn'.format(env)
        os.system(cmd)
        print('Staging VPN Connected')
    elif (env == 'production'):
         os.chdir('path')
         print('Production VPN Connection initiated')
         cmd = 'sudo openvpn --config {0}-abhishek.amralkar.ovpn'.format(env)
         os.system(cmd)
         print('Production VPN Connected')
    elif (env == 'eu'):
         os.chdir('path')
         print('EU VPN Connection initiated')
         cmd = 'sudo openvpn --config {0}-abhishek.amralkar.ovpn'.format(env)
         os.system(cmd)
         print('EU VPN Connected')
    else:
         os.chdir('path')
         print('Testpad VPN Connection initiated')
         cmd = 'sudo openvpn --config {0}-abhishek.amralkar.ovpn'.format(env)
         os.system(cmd)
         print('Testpad VPN Connected')

connect_vpn(env)
