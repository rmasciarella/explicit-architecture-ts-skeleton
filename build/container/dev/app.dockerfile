FROM node:22-alpine

RUN apk --update add --no-cache git && \
    rm -rf /var/cache/apk/*

WORKDIR /opt/app

COPY package*.json ./
RUN npm install

COPY . .
