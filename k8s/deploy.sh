#!/bin/bash

echo "Criando imagens docker"

docker buitd -t manalista/meu-app-server:1.0 backend/.
docker build -t manalista/meu-app-banco:1.0 database/.

echo "Enviando as imagens para o docker-hub"

docker push manalista/meu-app-server:1.0
docker push manalista/meu-app-banco:1.0

echo "Criando os serviços K8S"

kubectl apply -f services.yml

echo "Efetuando os deployments"
kubectl apply -f deployment.yml