FROM node:alpine

ARG DIR=/home/tractor-reports

COPY . /home/tractor-reports

RUN apk update
RUN apk upgrade
RUN apk add bash

WORKDIR $DIR
RUN npm install

ENV DEBUG deck*
ENV db_options_host 172.24.10.12

ENV DANGEROUSLY_DISABLE_HOST_CHECK true

CMD ["npm start"]
