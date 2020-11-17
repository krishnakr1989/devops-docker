FROM centos
RUN yum install -y httpd \
   zip \
   unzip
ADD   https://www.free-css.com/assets/files/free-css-templates/download/page258/sentra.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip sentra.zip
RUN cp -rvf templatemo_518_sentra/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
