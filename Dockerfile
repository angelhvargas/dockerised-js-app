FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app
WORKDIR /home/app

COPY ./app/ ./

CMD ["node", "/home/app/server.js"]
