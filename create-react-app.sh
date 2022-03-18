#!/bin/bash
if [ -z $1 ];
then
    printf "Como usar:\n\n";
    printf "  ./create-react-project.sh <versão>\n\n";
else
    printf "Criando o projeto $1:\n\n";
    docker run --rm --volume "$(pwd)/..:/srv" --workdir "/srv" node:17 yarn create react-app $1
fi

#if [ -f .env ]; 
#then
#    export "$(grep -vE "^(#.*|\s*)$" .env)"
    # as it's responding with single value ex: 
#    echo $TESTE # just print the single variable
#else
#    echo "Crie o arquivo .env"
#fi
# always response as one liner with all the variables
