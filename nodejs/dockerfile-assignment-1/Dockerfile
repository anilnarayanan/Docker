FROM node:6.15-alpine
EXPOSE 3000
RUN apk add --update tini
ENV destdir = /usr/src/app/
CMD mkdir -p $destdir
WORKDIR $destdir
COPY package.json .
RUN npm install && npm cache clean --force
COPY . . 
CMD [ "tini", "--", "node", "./bin/www" ]
#CMD [ "npm", "start" ]
