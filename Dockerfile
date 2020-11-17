FROM centos
RUN yum install -y httpd \
   zip \
   unzip
ADD   https://www.free-css.com/assets/files/free-css-templates/download/page260/elegance.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip elegance.zip
RUN cp -rvf templatemo_528_elegance/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
