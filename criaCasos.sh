#!/bin/bash

for i in {1..5}
do
    echo $i > $PWD/casos_de_teste/$i.in
    echo $(( $i + 1 )) > $PWD/casos_de_teste/$i.out
done

