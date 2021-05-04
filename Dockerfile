FROM node:14.15.1-alpine3.11 as build-stage

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .


RUN npm run build
RUN npm run test:unit


FROM nginx:1.18.0-alpine as production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
