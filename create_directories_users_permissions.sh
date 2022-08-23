#!/bin/bash

echo "alterando para para diretorio raiz!"
cd/

echo "criando pasta do projeto"
mkdir /projetoX
cd /projetoX

echo " criando pastas public..."
mkdir /public

echo " adm..."
mkdir /adm

echo "ven"
mkdir /ven

echo "sec"
mkdir /sec

echo "criando grupos de usuarios...GRP_ADM"
groupadd GRP_ADM

echo "...GRP_VEN"
groupadd GRP_VEN

echo "...GRP_SEC"
groupadd GRP_SEC

echo "criando usuarios"
echo "carlos"
useradd carlos -c "carlos silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd carlos -e

echo "maria"
useradd maria -c "maria silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd maria -e

echo "joao"
useradd joao -c "joao silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd joao -e

echo "debora"
useradd debora -c "debora silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd debora -e

echo "sebastiana"
useradd sebastiana -c "sebastiana silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd sebastiana -e

echo "roberto"
useradd roberto -c "roberto silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd roberto -e

echo "josefina"
useradd josefina -c "josefina silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd josefina -e

echo "amanda"
useradd amanda -c "amanda silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd amanda -e

echo "rogerio"
useradd rogerio -c "rogerio silva" -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd rogerio -e

echo "definindo donos das pastas"
chown root:GRP_ADM
chown root:GRP_VEN
chown root:GRP_SEC

echo "ajustando permissões"
chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec