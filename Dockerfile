FROM nginx:1.23.4

ARG PORT
ENV PORT=${PORT}

WORKDIR /etc/nginx
COPY ./nginx.conf.template /etc/nginx/

RUN DOLLAR='$' envsubst < ./nginx.conf.template > ./nginx.conf