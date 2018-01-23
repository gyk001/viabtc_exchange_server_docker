# Easy run viabtc_exchange_server use docker

```bash
git clone git@github.com:gyk001/viabtc_exchange_server_docker.git
cd viabtc_exchange_server_docker
docker-compose up
```

just wait it up and then test use curl 

```bash
curl  http://127.0.0.1:8080/ -d '{"method": "market.list", "params": [], "id": 1516681174}
```