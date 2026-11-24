#!/usr/bin/env bash
# File: guessinggame.sh

function get_file_count {
    echo $(ls -1 | wc -l)
}

correct_count=$(get_file_count)
guess=-1

echo "Combien de fichiers se trouvent dans le répertoire actuel ?"

while [[ $guess -ne $correct_count ]]
do
    read -p "Entrez votre estimation : " guess
    
    if [[ $guess -lt $correct_count ]]
    then
        echo "Votre estimation est trop basse. Essayez encore !"
    elif [[ $guess -gt $correct_count ]]
    then
        echo "Votre estimation est trop haute. Essayez encore !"
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers ($correct_count)."
    fi
done
