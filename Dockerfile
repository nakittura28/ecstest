FROM centos:latest

RUN yum install -y httpd
RUN mkdir /var/www/my-vol

VOLUME /var/www/my-vol

ONBUILD COPY index.html /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
