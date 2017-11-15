FROM node:alpine

ARG DIR=/home/tractor-reports

COPY . /home/tractor-reports

RUN apk update
RUN apk upgrade
RUN apk add bash

WORKDIR $DIR
RUN npm install

ENV DEBUG tr*
ENV PORT 3001

ENV DANGEROUSLY_DISABLE_HOST_CHECK true

CMD ["npm","run","start"]
