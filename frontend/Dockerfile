FROM node:12-alpine
ARG WORKDIR
ARG CONTAINER_PORT
ARG API_URL

ENV HOME=/${WORKDIR} \
  LANG=C.UTF-8 \
  TZ=Asia/Tokyo \
  HOST=0.0.0.0 \
  API_URL=${API_URL}

RUN apk update && \
  apk upgrade && \
  npm install

WORKDIR ${HOME}
EXPOSE ${CONTAINER_PORT}
