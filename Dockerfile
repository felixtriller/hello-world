FROM alpine

RUN apk add --no-cache thttpd

ADD index.html /var/www/index.html

EXPOSE 8080

CMD ["thttpd", "-D", "-p", "8080", "-d", "/var/www", "-l", "-"]
