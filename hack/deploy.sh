#!/bin/bash

# deploy gateway API CRDs
kubectl kustomize https://github.com/kubernetes-sigs/gateway-api/config/crd/experimental\?ref\=v0.5.1 | kubectl apply -f -
# deploy kubernetes Ingress Controller CRDs
kubectl kustomize https://github.com/kong/kubernetes-ingress-controller/config/crd | kubectl apply -f -
# deploy Gateway operator
kubectl kustomize "https://github.com/kong/gateway-operator-docs/config/default?submodules=false" | kubectl apply -f -
