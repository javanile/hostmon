FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json /app/

RUN apk add vips-dev --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community --repository http://dl-3.alpinelinux.org/alpine/edge/main

RUN npm install --build-from-source

COPY . /app/

VOLUME /app/data

EXPOSE 3000

CMD ["node", "server.js"]