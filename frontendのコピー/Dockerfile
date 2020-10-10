FROM node:12-alpine
ARG WORKDIR
ARG CONTAINER_PORT

ENV HOME=/${WORKDIR} \
  LANG=C.UTF-8 \
  TZ=Asia/Tokyo \
  HOST=0.0.0.0

RUN apk update && \
  apk upgrade && \
  npm install

WORKDIR ${HOME}
EXPOSE ${CONTAINER_PORT}
