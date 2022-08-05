#!/bin/bash

echo "Criando Usuario do sistema..."


	useradd guest400 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
echo "Usuário guest400, criado"
	passwd guest400 -e

echo "Fim do Script!!!"

