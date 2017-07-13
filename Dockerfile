FROM node:6.11

RUN apt-get update && \
    mkdir -p /usr/src/app
COPY package.json /usr/src/app
WORKDIR /usr/src/app
RUN npm install
CMD npm test && \
    npm run start:dev