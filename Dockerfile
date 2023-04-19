FROM node:16

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install

COPY . /app/

VOLUME /app/data

EXPOSE 3000

CMD ["node", "server.js"]