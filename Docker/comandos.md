docker system prune --all --force --volumes
    Todos os contêineres parados
    Todas as redes não usadas pelo menos por um contâiner
    Todos os volumes não usados por pelo menos um contêiner
    Todas as imagens sem nenhum contêiner associado
    Todo o cache build pendente

docker container ls
    Lista os contêineres que estão em execução. (docker ps)

docker container ls -a
    Lista todos os contêineres. (docker ps -a)

docker image ls
    Lista as imagens (docker images)

docker volume ls
    Lista os volumes

docker network ls
    Lista as redes

docker info
    Lista a quantidade de contêineres e imagens e informações do ambiente





docker exec apache cat /etc/os-release
    mostra informações sobre o SO do container