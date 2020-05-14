#! /bin/bash

pathToTests=$PWD/casos_de_teste
# echo $pathToTests
var=$(ls $pathToTests -l| grep .in|wc -l)

echo $var