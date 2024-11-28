# Step 1: Use the official PHP image with Apache
FROM php:8.1-apache

# Step 2: Set the working directory in the container
WORKDIR /var/www/html

# Step 3: Copy all the PHP project files into the container
COPY . /var/www/html/

# Step 4: Enable Apache mod_rewrite module (optional but commonly used for PHP apps)
RUN a2enmod rewrite

# Step 5: Expose the port Apache will listen on (default is 80)
EXPOSE 80

# Step 6: Start Apache service
CMD ["apache2-foreground"]
