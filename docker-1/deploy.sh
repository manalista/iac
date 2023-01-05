#!/bin/bash

echo "Gerando arquivo do site"
tar -czvf site.tar  -C site .

echo "Criando a imagem do site"
docker image build -t apache-loren_ipsun .

echo "Subindo conteineres"
docker-compose up -d
