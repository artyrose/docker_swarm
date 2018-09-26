FROM nginx:pagespeed

RUN useradd --no-create-home nginx

COPY nginx /etc/nginx
ADD dhparam.pem /etc/ssl/nginx/dhparam.pem

RUN mkdir -p /var/lib/nginx/tmp/cache_fcgi

ENTRYPOINT ["nginx"]
CMD ["-g daemon off;"]
