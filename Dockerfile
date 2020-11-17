FROM centos
RUN yum install -y httpd \
   zip \
   unzip
ADD   https://www.free-css.com/assets/files/free-css-templates/download/page256/ethereal.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip ethereal.zip
RUN cp -rvf Ethereal/* .
RUN rm -rf Ethereal ethereal.zip 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
