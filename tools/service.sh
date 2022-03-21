
#!/bin/bash
printf "Iniciando o servidor Node:\n\n";
docker run --rm --volume "$(pwd):/srv/app" --workdir "/srv/app" --publish 3000:3000 -it node:17 bash