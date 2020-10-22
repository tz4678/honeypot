FROM openresty/openresty:alpine
COPY ./nginx.conf /usr/local/openresty/nginx/conf
RUN mkdir -p /var/log/nginx
VOLUME ["/var/log/nginx"]
ENV NGINX_SERVERNAME=localhost
ENV TARGET_HOST=httpbin.org
ENV TARGET_SCHEME=http
EXPOSE 8080
