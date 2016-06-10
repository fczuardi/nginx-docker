FROM nginx:stable-alpine

RUN mkdir -p /usr/src/nginx-docker
WORKDIR /usr/src/nginx-docker

COPY conf.d/ /etc/nginx/conf.d/
RUN ls /etc/nginx/conf.d

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
