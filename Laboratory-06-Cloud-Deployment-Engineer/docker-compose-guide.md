# Docker Compose Guide

## The Docker Command Used

```yaml
version: '3'
services:
  database:
    image: mariadb:10.6
    environment:
      - MYSQL_ROOT_PASSWORD=cloudnova_root
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
  app:
    image: nextcloud
    ports:
      - 8080:80
    environment:
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
      - MYSQL_HOST=database
```

## What Does the `services:` Block Do?
The `services:` block lists all the containers that make up the application. In this file, there are two services defined: `database` and `app`. Each service tells Docker Compose what image to use and how to configure that container, so instead of running separate `docker run` commands for each container, everything is written in one file and started together.

## How Did the App Find the Database?
The `app` service knows how to reach the database through the environment variable `MYSQL_HOST=database`. Docker Compose automatically creates a shared network for all services in the file, and it lets each service reach the others using the service name as the hostname. Since the database service is named `database`, the app container can connect to it just by using that name.

## `docker run` vs `docker-compose up -d`
`docker run` starts one single container at a time, and you have to type a separate command with all the settings for every container you want to run. `docker-compose up -d` reads a configuration file (`docker-compose.yml`) and starts every container defined in it at once, already linked together on the same network. This makes deploying multiple connected containers much faster and less error-prone, since the whole setup is written as code instead of typed manually each time.
