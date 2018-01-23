#! /bin/bash

./wait-deps.sh &&\
    echo ">>> matchengine starting" &&\
    /btc/matchengine/restart.sh &&\
    /btc/wait-for-it.sh 127.0.0.1:7316 --timeout=60 --quiet --strict -- \
    echo ">>> matchengine started on 7316"

echo ">>> readhistory starting" &&\
    /btc/readhistory/restart.sh &&\
    /btc/wait-for-it.sh 127.0.0.1:7424 --timeout=60 --quiet --strict -- \
    echo ">>> readhistory started on 7424"

echo ">>> alertcenter starting..." &&\
    /btc/alertcenter/restart.sh &&\
    /btc/wait-for-it.sh 127.0.0.1:4444 --timeout=60 --quiet --strict -- \
    echo ">>> alertcenter started on 4444"

echo ">>> accesshttp starting..." &&\
    /btc/accesshttp/restart.sh &&\
    /btc/wait-for-it.sh 127.0.0.1:8080 --timeout=60 --quiet --strict -- \
    echo ">>> accesshttp started on 8080"


echo ">>> accessws starting..." &&\
    /btc/accessws/restart.sh &&\
    /btc/wait-for-it.sh 127.0.0.1:8091 --timeout=60 --quiet --strict -- \
    echo ">>> accessws started on 8091"

echo ">>> marketprice starting..." &&\
    /btc/marketprice/restart.sh &&\
    /btc/wait-for-it.sh 127.0.0.1:7416 --timeout=60 --quiet --strict -- \
    echo ">>> marketprice started on 7416"

ps -ef

tail -f /var/log/trade/matchengine.log





