#!/usr/bin/env bash

# create trigger resource
kubectl apply -n news-demo -f trigger/

# wait for sometime and then expose eventListener svc
# to create route
sleep 10

# expose eventListener svc
# for cluster than openshift, you need to create an ingress
oc expose svc el-news-demo-listener -n news-demo
