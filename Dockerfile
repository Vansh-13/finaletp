FROM nginx:latest

WORKDIR /app

RUN rm -rf /usr/share/nginx/html/*

COPY page.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
