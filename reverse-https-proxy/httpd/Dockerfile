FROM httpd

RUN apt-get update && apt-get install -y openssl

ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod a+x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["httpd-foreground"]

# docker cp <containerId>:/usr/local/apache2/conf/httpd.conf .
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
