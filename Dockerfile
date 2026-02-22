# Etapa 1: Usar uma imagem base do Node.js
FROM node:14

# Etapa 2: Definir o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Etapa 3: Copiar os arquivos do seu projeto para dentro do contêiner
COPY package*.json ./

# Etapa 4: Instalar dependências
RUN npm install

# Etapa 5: Copiar o restante do código-fonte para o contêiner
COPY ./src .

# Etapa 6: Expor a porta em que seu app vai rodar (se necessário)
EXPOSE 8080

# Etapa 7: Comando para rodar o aplicativo
CMD [ "node", "app.js" ]
