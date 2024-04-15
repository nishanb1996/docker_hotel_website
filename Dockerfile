
# Use the official CentOS 7 image
FROM centos:7

# Install Apache and other necessary packages
RUN yum install -y httpd && \
    yum clean all
RUN yum install git -y

RUN git clone https://github.com/nishanb1996/tutorial-hotel-website.git

RUN mv tutorial-hotel-website/* /var/www/html/	

# Expose port 80
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
