FROM node:17-alpine

WORKDIR /var/www/NGINX/actions-runner/_work/innomick-docker/innomick-docker/web-app/src/

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]
