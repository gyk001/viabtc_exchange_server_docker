#!/bin/bash

killall -s SIGQUIT marketprice.exe
sleep 1
cd /btc/marketprice && ./marketprice.exe config.json
