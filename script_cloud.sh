#!/bin/bash

echo "Criando diretórios..."
	mkdir /publico /adm /ven /sec
echo "Diretórios Criados!!"

echo "Criando Grupos..."
	groupadd GRP_ADM
	groupadd GRP_VEN
	groupadd GRP_SEC
echo "Grupos Criados!!"

echo "Criando Usuarios..."
	useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
	useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
	useradd joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

	useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
	useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
	useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

	useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
	useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
	useradd rogerio -c "Rogério da Silva" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
echo "Usuários criados!!"

echo "Criando parametro para troca de senha ao conectar..."
	passwd carlos -e
	passwd maria -e
	passwd joao -e

	passwd debora -e
	passwd sebastiana -e
	passwd roberto -e

	passwd josefina -e
	passwd amanda -e
	passwd rogerio -e
echo "Parâmetro finalizado!!"

echo "Atribuindo propriedades, permissões e acessos..."
	chown root:GRP_ADM /adm
	chown root:GRP_VEN /ven
	chown root:GRP_SEC /sec

	chmod 777 /publico
	chmod 770 /adm
	chmod 770 /ven
	chmod 770 /sec
echo "Regras de Negócios Finalizadas!!!"

echo "Script Finalizado!!!"
