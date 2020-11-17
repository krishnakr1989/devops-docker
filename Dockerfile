FROM centos
RUN yum install -y httpd \
   zip \
   unzip
ADD   https://www.free-css.com/assets/files/free-css-templates/download/page256/digital-service.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip digital-service.zip
RUN cp -rvf free-bootstrap-theme-dgs-master/* .
RUN rm -rf free-bootstrap-theme-dgs-master digital-service.zip 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
