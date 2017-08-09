FROM nginx:1.13.3-alpine

COPY conf.d /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
