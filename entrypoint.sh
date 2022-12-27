#!/bin/sh

set -e

echo ${KUBE_CONFIG_DATA} | base64 -d > kubeconfig
export KUBECONFIG="${PWD}/kubeconfig"

echo "running entrypoint command(s)"

#response=$(sh -c " $*")
#echo "::set-output name=response::$response"
#echo "response=$response" >> $GITHUB_OUTPUT

echo "response<<EOF" >> $GITHUB_OUTPUT
echo "$(sh -c "$*")" >> $GITHUB_OUTPUT
echo "EOF" >> $GITHUB_OUTPUT