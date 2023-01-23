#!/bin/bash

DEST_REGISTRY=$1

sed "s/%%REPLACE_REGISTRY%%/$DEST_REGISTRY/g" tekton/triggers.yaml | kubectl apply -f -
sed "s/%%REPLACE_REGISTRY%%/$DEST_REGISTRY/g" tekton/pipelines.yaml | kubectl apply -f -
sed "s/%%REPLACE_REGISTRY%%/$DEST_REGISTRY/g" tekton/interceptors.yaml | kubectl apply -f -