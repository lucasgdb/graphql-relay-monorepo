#!/usr/bin/env bash

sudo sh ./scripts/create_hosts.sh
docker image build -t install_dependencies scripts
docker container run --rm --user $(id -u):$(id -g) -v ${PWD}:/relay-graphql-monorepo -w /relay-graphql-monorepo install_dependencies:latest
