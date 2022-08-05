#! /bin/bash

echo "Criando os diretórios"

mkdir /publico /adm /ven /sec

echo "Criando os grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários"

useradd carlos -m -s /bin/bash -c "Carlos Silva" -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria Rosa" -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -c "João Batista" -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Debora Maria" -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -c "Sebastião Pereira" -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto Sávio" -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd josefina -m -s /bin/bash -c "Josefina Andrade" -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda Aurora" -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogério Souza" -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento Finalizado"

