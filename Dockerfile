# Use an official PHP base image with Apache
FROM php:8.1-apache

# Install Git to clone the repository
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

# Set the working directory inside the container
WORKDIR /var/www/html

# Clone the repository into the container
RUN git clone https://github.com/tarun177/basic-php-website.git /var/www/html

# Set the correct permissions for the Apache web server
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Expose the port Apache will listen on
EXPOSE 80

# Enable Apache mod_rewrite (if required for your project)
RUN a2enmod rewrite

# Set the container to start Apache in the foreground
CMD ["apache2-foreground"]
