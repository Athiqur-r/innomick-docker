FROM node:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY /var/www/NGINX/actions-runner/_work/innomick-docker/innomick-docker/web-app/src/package.json /usr/src/app/

RUN npm install

ADD src /usr/src/app/src

ADD public /usr/src/app/public

EXPOSE 3000

CMD ['npm', 'start']
