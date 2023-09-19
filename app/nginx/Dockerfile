FROM alpine:3.17

RUN apk update && \
    apk add --no-cache nginx && \
    apk add vim

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/lib/nginx/html

RUN chmod 644 /var/lib/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

