#!/bin/bash

killall -s SIGQUIT alertcenter.exe
sleep 1
cd /btc/alertcenter && ./alertcenter.exe config.json
