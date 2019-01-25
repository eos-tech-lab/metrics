# docker-compose file for a simple local InfluxDB, Telegraf, Chronograf and Grafana setup

Create shared directories and start all:

```
./run.sh

```

Run your stack:

```
docker-compose up -d

```

Show me the logs:

```
docker-compose logs
```

Stop it:

```
docker-compose stop
docker-compose rm
```

Grafana will be available here: http://127.0.0.1:3000 (user: admin, initial password: admin)

