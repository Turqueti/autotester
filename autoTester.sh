#!/bin/bash

# inputs do usuario
pathToTests=$PWD/casos_de_teste #caminho para pasta dos casos de teste sendo $PWD a pasta em que o programa foi executado
numcasos=6 #numero de casos de teste
#inputs do usuario


start=1
i=$start


while [[ $i -le $numcasos ]]
do
    # echo $i.in $i.out
    # echo $pathToTests/$i

    $PWD/out < $pathToTests/$i.in > /tmp/testfile
    # cat /tmp/testfile


    if ! cmp -s /tmp/testfile $pathToTests/$i.out
        then
            echo $i.in
    fi

    ((i = i + 1))
done

# echo $pathToTests