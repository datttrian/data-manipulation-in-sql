#!/usr/bin/env bash

set -euo pipefail
mkdir -p "$HOME"/.local/docker/postgresql
docker run --rm --name pg-docker -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=local -d -p 5432:5432 -e PGDATA=/var/lib/postgresql/data/pgdata -v "$HOME"/.local/docker/postgresql/data:/var/lib/postgresql/data postgres

docker cp match.csv  pg-docker:/tmp/match.csv
docker cp country.csv  pg-docker:/tmp/country.csv
docker cp team.csv  pg-docker:/tmp/team.csv
docker cp league.csv  pg-docker:/tmp/league.csv

docker exec -it pg-docker /bin/bash


