FROM nginx:alpine

COPY dist/ /app

RUN sed -i '1idaemon off;' /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx"]