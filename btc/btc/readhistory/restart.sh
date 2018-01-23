#!/bin/bash

killall -s SIGQUIT readhistory.exe
sleep 1
cd /btc/readhistory && ./readhistory.exe config.json
