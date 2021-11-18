#! /bin/bash

touch data/acme.json
chmod 600 data/acme.json

export TRAEFIK_DASHBOARD_AUTH=$(htpasswd -nb ${TRAEFIK_DASHBOARD_USER} ${TRAEFIK_DASHBOARD_PASSWORD})

docker-compose up -d
