#!/bin/bash

#cria os diretorios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


#cria os grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


#cria os usuarios e adiciona aos grupos
useradd carlos -m -G GRP_ADM -s /bin/bash -p $(openssl -crypt Senha123)
useradd carlos -m -G GRP_ADM -s /bin/bash -p $(openssl -crypt Senha123)
useradd carlos -m -G GRP_ADM -s /bin/bash -p $(openssl -crypt Senha123)

useradd carlos -m -G GRP_VEN -s /bin/bash -p $(openssl -crypt Senha123)
useradd carlos -m -G GRP_VEN -s /bin/bash -p $(openssl -crypt Senha123)
useradd carlos -m -G GRP_VEN -s /bin/bash -p $(openssl -crypt Senha123)

useradd carlos -m -G GRP_SEC -s /bin/bash -p $(openssl -crypt Senha123)
useradd carlos -m -G GRP_SEC -s /bin/bash -p $(openssl -crypt Senha123)
useradd carlos -m -G GRP_SEC -s /bin/bash -p $(openssl -crypt Senha123)


#aplica permissao aos grupos
chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

chmod 777 /publico