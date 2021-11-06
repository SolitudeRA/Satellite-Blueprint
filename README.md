# Satellite Blueprint

---

> Satellite Blueprint is a docker compose project for private server maintained by SolitudeRA.

[![Author](https://img.shields.io/badge/Author-SolitudeRA-ff69b4.svg?style=flat-square&logo=github)](https://www.protogalaxy.me)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square&logo=opensourceinitiative)](https://opensource.org/licenses/MIT)
![Status](https://img.shields.io/badge/Status-Alpha-orange.svg?style=flat-square&logo=jenkins)

## Quick Start

To deploy Satellite Blueprint, you may first clone this project from GitHub to your own server by running this command.

```
git clone https://github.com/SolitudeRA/Satellite-blueprint.git
```

After cloning and before deploying the project, you should first ***modify sensitive config*** of the docker compose
file and database initializing files. Here is the table of configurable parameters in this project.

### Compose file

> docker-compose.yml

#### MySQL

* MYSQL_ROOT_PASSWORD

#### WordPress

* WORDPRESS_DB_NAME
* WORDPRESS_DB_USER
* WORDPRESS_DB_PASSWORD

#### NextCloud

* MYSQL_DATABASE
* MYSQL_USER
* MYSQL_PASSWORD

### Database initializing files

> /blueprint/database/mysql/init/

#### WordPress

* DATABASE
* USER
* PASSWORD

#### NextCloud

* DATABASE
* USER
* PASSWORD

### Database config files

> /blueprint/database/mysql/config/

### Nginx server blocks

> /blueprint/proxy/nginx/server_blocks/

* wordpress.conf
* nextcloud.conf
* jenkins.conf

After modifying these configs, you could run this command in project directory to deploy the project.

```
docker-compose up -d
```

## User Guide

### Architecture