#!/usr/bin/env bash

set -e

PGHOST=${PGHOST:=localhost}
PGPORT=${PGPORT:=5432}
PGUSER=${PGUSER:=postgres}
PGPASSWORD=${PGPASSWORD:=123456}
PGDATABASE=${PGDATABASE:=testdb}

echo "Hello World!"
echo "$PGUSER:$PGPASSWORD@$PGHOST:$PGPORT/$PGDATABASE"
echo "$PATH"

echo "Init Database"
createdb $PGDATABASE

psql -d $PGDATABASE -w -c 'CREATE EXTENSION postgis;'
psql -d $PGDATABASE -w -c 'CREATE EXTENSION hstore;'
psql -d $PGDATABASE -w -c 'CREATE SCHEMA naturalearth;'
psql -d $PGDATABASE -w -c 'CREATE SCHEMA osmd;'

echo "NaturalEarth: Loading..."
for shp in $(ls /tmp/naturalearth/10m_cultural/*.shp); do
    FILENAME=$(basename $shp)
    shp2pgsql -s epsg:4326 -c -g geometry -D -I -W "ISO-8859-1"  $shp naturalearth.${FILENAME%.*} | psql -d $PGDATABASE -w
done
