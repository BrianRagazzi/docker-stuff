#!/bin/sh

kubectl vsphere login --insecure-skip-tls-verify --server=${WCP_ENDPOINT} --vsphere-username ${KUBECTL_VSPHERE_USERNAME}
kubectl config use-context ${WCP_ENDPOINT}

kubectl get tkc -A -o json | jq -r '.items[].metadata | .namespace + "/"+ .name'
