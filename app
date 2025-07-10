<?php
$servername = "db"; 
$username = "root";
$password = "root";
$dbname = "uas_cloud_2212500801"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

FROM php:8.1-apache

RUN docker-php-ext-install mysqli

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY . /var/www/html/

EXPOSE 80

