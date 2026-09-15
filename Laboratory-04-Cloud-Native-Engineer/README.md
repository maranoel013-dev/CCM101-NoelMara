# Laboratory 4: Cloud-Native Engineer

## Mission Overview
This lab focused on understanding the shift from traditional Virtual Machines to containers. Using Docker on a KillerCoda playground, I deployed and managed a live Nginx web server, learning fundamental Docker commands along the way.

## Objectives
- Differentiate between traditional Virtual Machines (VMs) and Containers.
- Access a Docker-enabled cloud environment using KillerCoda.
- Execute fundamental Docker CLI commands.
- Pull, run, manage, and terminate a containerized application (Nginx).
- Create technical documentation of container operations using Markdown.

## Docker Commands Executed
- `docker pull nginx` — downloaded the official Nginx image from Docker Hub.
- `docker run -d -p 8080:80 --name noel-nginx nginx` — ran the Nginx container in the background and mapped port 8080 to port 80.
- `curl http://localhost:8080` — checked that the Nginx server was working.
- `docker ps` — listed the running containers.
- `docker stop noel-nginx` — stopped the running container.
- `docker ps -a` — listed all containers, including stopped ones.
- `docker rm noel-nginx` — removed the stopped container.

## Skills Learned
- How containers differ from Virtual Machines in architecture, speed, and resource use.
- How to pull and run a Docker image.
- How to map ports between the host and a container.
- How to manage the full lifecycle of a container, from running to removing it.

## Challenges Encountered
At first, I was not familiar with the Docker commands, so I had to look up what each one meant before using it. I also made a few typing mistakes while entering commands in the terminal, which caused errors that I had to fix before continuing. I also ran into an issue on GitHub where a file conflicted with a folder path, which I had to delete before I could create the correct folder structure.
