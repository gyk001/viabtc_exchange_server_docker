#! /bin/bash


/btc/wait-for-it.sh redis_sentinel:26379 --timeout=60 --strict -- \
    /btc/wait-for-it.sh mq:9092 --timeout=60 --strict -- \
    /btc/wait-for-it.sh db:3306 --timeout=60 --strict