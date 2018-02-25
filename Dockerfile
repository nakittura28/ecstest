FROM httpd

ONBUILD COPY index.html /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
