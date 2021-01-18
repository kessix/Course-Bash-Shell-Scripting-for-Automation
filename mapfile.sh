#!/bin/bash

# Mapeando arquivo dentro de um array

declare -a passarray
mapfile passarray < "$1"

# Agora o echo imprime na tela de acordo com aposição do array
# Para referenciar todas as linhas use ${passarray[@]}
# Muito útil para manipular uma linha específica em um arquivo com várias linhas
# arquivo /etc/passwd linha 10 "news:x:9:9:news:/var/spool/news:/usr/sbin/nologin"

echo ${passarray[9]}

