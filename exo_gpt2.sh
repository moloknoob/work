#!/bin/bash



if [ $# == 1 ]; then
    echo " il y as bien le bon nombre d'argument";
else 
    echo " vous n'avez pas entrez le bon nombre d'argument";
    exit 1
fi





count=$(wc -l < "$1")


echo $count