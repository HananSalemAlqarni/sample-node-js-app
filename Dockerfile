FRiOM node:alpine

LABEL author="Hanan"

EXPOSE 3000
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu 
USER ubuntu 

COPY . /home/ubuntu

WORKDIR /home/ubuntu

RUN npm install

VOLUME [ "/var/www" ]

CMD [ "npm","start" ]
