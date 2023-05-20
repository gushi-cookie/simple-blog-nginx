FROM nginx:1.23.4

ARG PORT
ENV PORT=${PORT}

COPY nginx.conf /etc/nginx/nginx.conf