
echo "voulez vous executez letape 1 ? veuillez taper oui si c'est le cas"
read reponse

if [ $reponse = "oui" ]; then
    echo "vous avez choisis de ne pas skip l'etape 1"
    if [ -d /home/molok/work/in/ ];then
        echo " le dossier in existe bien passons a l'etape suivante";
    else  
        mkdir /home/molok/work/in
        echo "le dossier in a ete crée";
    fi

    if [ ! -f /home/molok/work/in/data.json ]; then
        wget -O /home/molok/work/in/data.json https://microsoftedge.github.io/Demos/json-dummy-data/5MB.json;
        echo "recuperation des donnée en format json dans le dossier in/data.json";
    else 
        echo "le fichier data.json est deja present passons a l'etape suivante";
    fi

    if [ -d /home/molok/work/log ];then
        echo " le dossier log existe bien passons a l'etape suivante";
    else  
        mkdir /home/molok/work/log
    fi

    date=$(date +"%d-%m-%Y-%Hh%Mm%Ss")  # ici je recupere l'heure au format voulu merci chat gpt

    wget -o /home/molok/work/log/wgetlog-$date.log https://microsoftedge.github.io/Demos/json-dummy-data/5MB.json;
    echo "des logs onts ete ajoutée dans le dossier log/";
else 
    echo "vous avez donc choisis de skip l'etape 1";
fi

mysql -u julien -ppass < "/home/molok/work/script.sql"
echo "lancement du script sql"



