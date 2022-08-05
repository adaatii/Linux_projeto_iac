#! /bin/bash

echo "Removendo os diretórios"

rmdir /publico /adm /ven /sec

echo "Removendo os grupos de usuários"

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Removendo os usuários"

userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao

userdel -r -f debora
userdel -r -f sebastiao
userdel -r -f roberto

userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio

echo "Procedimento Finalizado"

