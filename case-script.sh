#!/bin/bash

echo -e "
1 - Adicionar um usuário no sistema
2 - Delerar um usuário do sistema
3 - Verificar se um usuário existe no sistema
4 - Sair"

echo
echo "Escolha uma das opções: "
read OPT

case $OPT
1)
	clear
	echo -n "Digite o nome do usuário a ser adicionado: "
	read USUARIO	
	echo -n "Digite sua senha: "
	read -s SENHA
	echo "Adcionando novo usuário ($USUARIO) no sistema: "
	adduser -m --home /srv/home/$USUARIO $USUARIO]
	echo $USUARIO:$SENHA | chpasswd
        if [ $? -eq 0 ]; then
        	echo "O o usuário $USUARIO foi adicionado com sucesso!"
	else
		echo "Não foi possível adcionar o usuário sistema!"
	fi			
;;	
2)
	clear
	echo "Digite o nome do usuário que deseja deletar: "
	read USUARIO
	echo "Deletando o usuário ($USUARIO) do sistema..."
	userdel -r $USUARIO
	if [ $? -eq 0 ]; then
		echo "O usuário $UDUARIO deletado com sucesso!"
	else
		echo "Não possível deletar o usuário no sistema!"
	fi
;;
3)
	clear 
	echo "Digite o nome do usuário que deseja pesquisar: "
	read USUARIO
	echo "Pesquisando usuário ($USUARIO) no sistema...."
	echo
	getent passwd $USUARIO > /dev/null
	if [ $? -eq 0 ]; then
		echo "O usuário $USUARIO esta presente no sistema!"
	else 
		echo "Não possivel encontrar o usuário no sistema"
	fi
;;
4) 
	exit
;;
*) 
	echo "Escola uma opção válida: 1|2|3|4"
esac

#done
