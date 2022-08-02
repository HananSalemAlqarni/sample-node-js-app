FROM node:alpine

LABEL author="Hanan"

EXPOSE 3000

COPY . /var/

WORKDIR /var/www

RUN npm install

VOLUME [ "/var/www" ]

CMD [ "npm","start" ]