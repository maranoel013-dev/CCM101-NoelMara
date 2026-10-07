# Laboratory 6: Cloud Deployment Engineer

## Mission Overview
This lab focused on deploying a multi-container application using Docker Compose instead of running containers one by one manually. I deployed a two-tier system made up of a Nextcloud web application connected to a MariaDB database, using a single YAML configuration file to define and launch the entire stack.

## Objectives
- Understand multi-tier application architecture.
- Learn the purpose and structure of a `docker-compose.yml` file.
- Use the `nano` text editor to create configuration files in the Linux terminal.
- Deploy a multi-container application (Nextcloud + MariaDB) using Docker Compose.
- Document deployment steps and Infrastructure as Code concepts using Markdown.

## Commands Executed
- `mkdir nextcloud-deployment` — created a new project folder.
- `cd nextcloud-deployment` — moved into the project folder.
- `nano docker-compose.yml` — opened the nano editor to create the Compose file.
- `docker-compose up -d` — deployed both the database and app containers in the background.
- `docker-compose ps` — verified both containers were running.
- `docker-compose down` — stopped and removed both containers along with the network.

## Skills Learned
- How to write a `docker-compose.yml` file to define multiple linked containers.
- How services inside a Compose file communicate using service names as hostnames.
- The difference between deploying containers manually with `docker run` versus deploying a full stack with Docker Compose.
- How to use `nano` to create and edit files directly in the Linux terminal.
