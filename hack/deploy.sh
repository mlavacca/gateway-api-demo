#!/bin/bash

# deploy gateway API CRDs
kubectl kustomize https://github.com/kubernetes-sigs/gateway-api/config/crd/experimental\?ref\=v0.8.1 | kubectl apply -f -
# deploy Kong Kubernetes Ingress Controller
kubectl apply -f https://raw.githubusercontent.com/Kong/kubernetes-ingress-controller/latest/deploy/single/all-in-one-dbless.yaml
