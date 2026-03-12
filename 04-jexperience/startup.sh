#!/usr/bin/env bash

source .env

docker compose up -d --renew-anon-volumes --remove-orphans --force-recreate elasticsearch

echo "$(date +'%d %B %Y - %k:%M') - Waiting for Elasticsearch to startup"
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' http://elastic:${ELASTIC_PASSWORD}@localhost:9200/_security/user)" != "200" ]];
  do sleep 5;
done

echo "$(date +'%d %B %Y - %k:%M') - Set jcustomer role in ES"
curl -X POST http://elastic:${ELASTIC_PASSWORD}@localhost:9200/_security/role/jcustomer?refresh=wait_for --header "Content-Type: application/json" -d @jcustomer-elasticsearch-roles.json

echo "$(date +'%d %B %Y - %k:%M') - Waiting for role available"
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' http://elastic:${ELASTIC_PASSWORD}@localhost:9200/_security/role/jcustomer)" != "200" ]];
  do sleep 5;
done

echo "\n$(date +'%d %B %Y - %k:%M') - Set jcustomer user in ES"
curl -X POST http://elastic:${ELASTIC_PASSWORD}@localhost:9200/_security/user/jcustomer?refresh=wait_for --header "Content-Type: application/json" -d "{ \
    \"password\" : \"${ELASTIC_PASSWORD}\",\
    \"roles\" : [ \"jcustomer\" ] \
  }"

echo "\n$(date +'%d %B %Y - %k:%M') - Installing Elasticsearch plugins"
docker exec --tty elasticsearch /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch analysis-icu
docker exec --tty elasticsearch /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch analysis-stempel
docker exec --tty elasticsearch /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch analysis-kuromoji
docker compose restart elasticsearch

echo "\n$(date +'%d %B %Y - %k:%M') - Starting remaining services"
docker-compose up -d
