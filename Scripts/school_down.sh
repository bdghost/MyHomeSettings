#!/bin/sh
ifconfig eth0 down
ifconfig eth0 hw ether 00:E0:4D:27:F0:C3
ifconfig eth0 up
