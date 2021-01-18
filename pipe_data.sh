#!/bin/bash
# Recebendo saida de outro comando via stdin 
if [[ -p /dev/stdin ]]; then
	while IFS= read -r LINE; do
		echo "Usuário e parâmetros: $LINE"
		# Outra forma de imprimir seria usando array
		# pipearray+=( "$LINE" )
	done
fi

#echo ${pipearray[@]}

#-------------------------------------------------------------
# Exemplo 1
# 
# $ cat /etc/passwd | bash pipe_data.sh
# 
# 
# 
# 
# 
# 
