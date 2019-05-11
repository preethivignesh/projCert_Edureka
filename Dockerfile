FROM devopsedu/webapp
RUN rm -f /var/www/html/index.*
COPY website /var/www/html/
EXPOSE 8007
CMD service apache2 start && tail -f /var/log/apache2/access.log
