RUN apt-get update && apt-get upgrade -y
RUN apt-get install apache2 -y
RUN rm /var/www/html/index.html
RUN echo "Hello DevOpstricks" > /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]