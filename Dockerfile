FROM node:alpine

EXPOSE 1025
EXPOSE 1080

RUN npm install -g fake-smtp-server

ENTRYPOINT ["fake-smtp-server"]
