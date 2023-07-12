#!/bin/sh
# set -e
RESOURCE_GROUP="Neo4JAKS"
LOCATION="uksouth"
AKSCLUSTER_NAME="neo4jcluster"

az group create \
    --name "$RESOURCE_GROUP" \
    --location "$LOCATION"

az configure --defaults group=$RESOURCE_GROUP
az configure --defaults location=$LOCATION

az aks create --name $AKSCLUSTER_NAME --node-count=1

az aks get-credentials --name my-neo4j-aks-cluster --admin

