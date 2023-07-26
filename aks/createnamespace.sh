#!/bin/sh
# set -e

kubectl create namespace neo4jns
kubectl config set-context --current --namespace=neo4jns

helm install my-neo4j-release neo4j/neo4j --namespace neo4jns -f values.yaml

# Connect at http://20.26.39.16:7474/browser/
# https://data-importer.neo4j.io/connection/connect
# https://graphacademy.neo4j.com/courses/importing-data/
