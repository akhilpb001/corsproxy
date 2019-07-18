FROM node:8.16.0-alpine

RUN npm install -g corsproxy

EXPOSE 1337

ENV CORSPROXY_HOST 0.0.0.0

ENTRYPOINT ["corsproxy"]
