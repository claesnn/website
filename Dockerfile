FROM node:20 as build

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=build /app/dist .

WORKDIR /etc/nginx/conf.d/default.conf

COPY nginx.conf .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]