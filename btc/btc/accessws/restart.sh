#!/bin/bash

killall -s SIGQUIT accessws.exe
sleep 1
cd /btc/accessws && ./accessws.exe config.json
