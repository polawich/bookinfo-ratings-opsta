#!/bin/sh

set -e
echo "start migration"
mongoimport --host localhost --username ratings --password CHANGEME \
  --db ratings --collection ratings --drop --file /docker-entrypoint-initdb.d/ratings_data.json
