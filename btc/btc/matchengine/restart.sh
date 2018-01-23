#!/bin/bash

killall -s SIGQUIT matchengine.exe
sleep 1
cd /btc/matchengine && ./matchengine.exe config.json
