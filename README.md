# "Hello World" Project in PHP with Docker

This project is a simple "Hello World" application in PHP, running in a Docker container.

## Required Files

1. `index.php` - Main application file.
2. `Dockerfile` - Docker configuration file.

---

### Step 1: Create the `index.php` File

Create a file named `index.php` with the following content:

```php
<?php
echo "Hello from PHP";
?>
```

This file defines a basic PHP application that displays the message "Hello from PHP".

---

### Step 2: Create the `Dockerfile`

In the same directory, create a file named `Dockerfile` with the following content:

```Dockerfile
# Use an official PHP image with Apache
FROM php:7.4-apache

# Copy the PHP file to the Apache web server's root directory
COPY index.php /var/www/html/

# Expose port 80
EXPOSE 80
```

This `Dockerfile`:
- Uses a PHP image with Apache.
- Copies `index.php` into the container's web server directory.
- Exposes port 80 where Apache will serve the application.

---

### Step 3: Build the Docker Image

In the terminal, navigate to the directory where you saved `index.php` and `Dockerfile`, and run the following command to build the image:

```bash
docker build -t php-app .
```

This will create an image named `php-app`.

---

### Step 4: Run the Container

Run the following command to start a container from the created image and bind it to port 8087 on your machine:

```bash
docker run -d -p 8087:80 php-app
```

This command runs the container in the background (`-d`) and maps port 8087 on your local machine to port 80 in the container.

---

### Step 5: Test the Application

Open your browser and go to [http://localhost:8087](http://localhost:8087). 
https://phprailway-production.up.railway.app/
