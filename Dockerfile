FROM node:20 as build

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

FROM nginx:alpine

WORKDIR /

COPY --from=build /app/dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]