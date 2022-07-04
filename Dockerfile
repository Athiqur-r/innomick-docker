FROM node:lts-alpine as build 
WORKDIR /app
#COPY /var/www/NGINX/prod/package*.json ./
RUN npm install 
COPY . .
CMD ["npm", "start"]
