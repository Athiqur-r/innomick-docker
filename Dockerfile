# build environment
FROM node:13.12.0-alpine as build

WORKDIR /app

COPY . .

RUN npm run build

FROM nginx:stable-alpine

#WORKDIR /usr/share/nginx/html

WORKDIR /var/www/html

COPY --from=build /app/build .

CMD ["nginx", "-g", "daemon off;"]