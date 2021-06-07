#!/bin/bash
kubectl apply -f blue-ingress.yaml
echo "////////// blue ingress ////////////"
for i in {1..200}; do curl bluegreen.aa-ingress-blue-green-t-aa26ccd186043d00655b29246b83475c-0000.us-south.containers.appdomain.cloud && echo; done
kubectl apply -f green-ingress.yaml
echo "////////// green ingress ////////////"
for i in {1..200}; do curl bluegreen.aa-ingress-blue-green-t-aa26ccd186043d00655b29246b83475c-0000.us-south.containers.appdomain.cloud && echo; done
