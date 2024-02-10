# Inception

The aim of this project from 42 school is to get a general knowledge about system administration by using Docker.

## The challenge

This project consists in having you set up a small infrastructure composed of different
services under specific rules.

### Key Components:

- A Docker container hosting NGINX configured exclusively with TLSv1.2 or TLSv1.3.
- A dedicated Docker container housing WordPress + php-fpm (properly installed and configured) without NGINX.
- Another Docker container containing MariaDB, excluding NGINX.
- Volumes for your WordPress database and website files.
- A Docker network to facilitate seamless communication between your containers.
- Implementation of automatic container restarts in the event of a crash.
