#!/bin/bash

sudo mkdir -p /opt/docker/influxdb/data
sudo mkdir -p /opt/docker/chronograf/data
sudo mkdir -p /opt/docker/grafana/data; sudo chown 472:472 /opt/docker/grafana/data

docker-compose up -d

echo "Grafana: http://127.0.0.1:3000 - admin/admin"
echo "Chronograf: http://127.0.0.1:8888"

echo
echo "Current database list"
echo "curl -G http://localhost:8086/query?pretty=true --data-urlencode \"db=glances\" --data-urlencode \"q=SHOW DATABASES\""

echo
echo "Create a new database ?"
echo "curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'"
