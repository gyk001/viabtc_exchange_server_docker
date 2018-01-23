#!/bin/bash

killall -s SIGQUIT accesshttp.exe
sleep 1
cd /btc/accesshttp && ./accesshttp.exe config.json
