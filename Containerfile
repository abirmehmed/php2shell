# Use a known vulnerable version of PHP for educational purposes
FROM php:8.1.0-apache

# Copy our source code into the web directory
COPY src/ /var/www/html/

# Expose port 80
EXPOSE 80
