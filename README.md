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
<img width="274" alt="Captura de pantalla 2024-02-10 182741" src="https://github.com/otaola03/Inception/assets/108891460/b5423a0c-8d90-4cf5-811d-94c20dd0dc41">
