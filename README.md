# Nodejs Docker

## Construção

    docker build -t nodejs-docker .
    
## Rodar o conteiner

    docker run --rm -p 8080:8080 --name nodejs-docker nodejs-docker
