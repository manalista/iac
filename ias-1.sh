#!/bin/bash

#criando as pastas
echo "Criando as pastas: publico, adm, ven, sec"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


#criando os grupos
echo "Criando os grupos: GRP_ADM, GRP_VEN, GRP_SEC"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criando usuarios
echo "Criando usuários: carlos, maria, joao, debora, sebastiana, roberto, josefina, amanda, rogerio"
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123)
useradd debora -m -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123)
useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123)

#colocando usuarios nos grupos
echo "Colocando os usuários nos grupos:"
#grupo adm
echo "  - GRUPO_ADM: carlos, maria, joao"
usermod -a -G GRP_ADM carlos
usermod -a -G GRP_ADM maria
usermod -a -G GRP_ADM joao

#grupo vendas
echo "  - GRUPO_VEN: debora, sebastiana, roberto"
usermod -a -G GRP_VEN debora
usermod -a -G GRP_VEN sebastiana
usermod -a -G GRP_VEN roberto

#grupo secretariado
echo "  - GRUPO_SEC: josefina, amanda, rogerio"
usermod -a -G GRP_SEC josefina
usermod -a -G GRP_SEC amanda
usermod -a -G GRP_SEC rogerio

#corrigindo as permissoes
echo "Adequando as permissões de pastas"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#corrigindo as propriedades
echo "Adequando as propriedades das pastas"
chown root.GRP_ADM /adm
chown root.GRP_VEN /ven
chown root.GRP_SEC /sec

echo "Concluído."
