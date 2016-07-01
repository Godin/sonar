FROM nginx:alpine

RUN apk --update add openssl

COPY nginx.conf /etc/nginx/nginx.conf

ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
