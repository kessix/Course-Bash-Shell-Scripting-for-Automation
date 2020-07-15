#!/bin/bash
echo "imprime três parÂmetros"
echo $1 $2 $3
echo 
echo "imprime todos os parâmentros"
echo $*
echo "relação de argumentos?"
echo $@
echo "imprime o número de parâmetros"
echo $#
echo "imprime o nome do script/comando "
echo $0
echo "imprime retorno do ultimo comando"
ls /cook
echo $?
