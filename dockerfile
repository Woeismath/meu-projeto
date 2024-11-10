# Usando a imagem oficial do Node.js
FROM node:16

# Diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia o package.json e instala as dependências
COPY package*.json ./
RUN npm install

# Copia o código da aplicação para dentro do contêiner
COPY . .

# Expõe a porta que a aplicação vai rodar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["node", "app.js"]
