FROM node:20

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY --from=0 /app/dist .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]