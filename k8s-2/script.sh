#!/bin/bash


docker build -t manalista/dio-app:2.0 app/.
ddocker push manalista/dio-app:2.0


kubectl apply -f .\mysql-deployment.yml --record
kubectl apply -f .\app-deployment.yml --record


