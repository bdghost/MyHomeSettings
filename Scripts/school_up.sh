#!/bin/sh
ifconfig eth0 down
ifconfig eth0 hw ether 00:1B:FC:83:EC:F7
ifconfig eth0 up
