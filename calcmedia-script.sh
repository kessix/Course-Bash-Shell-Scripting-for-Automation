#!/bin/bash
echo "Digite seu nome"
read ALUNO
echo "Por favor, digite sua primeira nota: "
read N1
echo "Agora digite sua segunda nota: "
read N2
SOMA=$(expr $N1 + $N2)
MEDIA=$(expr $SOMA / 2)
echo "Sua média $ALUNO é: $MEDIA"
