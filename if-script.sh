#!/bin/bash
#
#
#

echo "Digite seu nome: "
read ALUNO
echo "Por favor, digite a sua primeira nota: "
read N1
echo "Agora digite sua segunda nota: "
read N2
SOMA=$(expr $N1 + $N2)
MEDIA=$(expr $SOMA / 2)
echo "$ALUNO sua média é $MEDIA"

if [ $MEDIA -ge 7 ]; then
	echo "O aluno está Aprovado"
else
	echo "O aluno está reprovado"
fi	
