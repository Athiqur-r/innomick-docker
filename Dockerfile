FROM node:lts-alpine as build 
WORKDIR /var/www/NGINX/docker
#COPY /var/www/NGINX/prod/package*.json ./
COPY . .
RUN npm install 
CMD ["npm", "start"]
