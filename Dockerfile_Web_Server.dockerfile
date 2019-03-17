
# Apache server.
FROM ubuntu:14.04
RUN apt-get update 
RUN apt-get install -y apache2
ENV APACHE_LOG_DIR /var/log/apache2

# Listening port
EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]