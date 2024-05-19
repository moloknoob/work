#!/bin/bash


count=0
if [ $# == 1 ]; then   # le $# signifie le nombre d'argument
    echo " vous avez bien rentrez un argument"
else
    echo " vous n'avez droit qu'a un argument"
fi

dir="$1"

 

if [ -d  "$dir" ];then   # -d pour verifier si le repertoir est un dossier
    echo "Le dossier1 existe !";
else 
    echo "le dossier n'existe pas"
fi

for file in "$dir"/*; do 
    if [ -f "$file" ]; then  # -f pour verifier si le repertoir est un fichier
        ((count++))
    fi
done 
echo "il y as $count fichier";