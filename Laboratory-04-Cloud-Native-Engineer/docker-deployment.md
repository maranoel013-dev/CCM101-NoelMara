# Docker Container Lifecycle

| Command | What It Does |
|---|---|
| `docker ps` | Shows the containers that are currently running. |
| `docker stop noel-nginx` | Stops the noel-nginx container safely. |
| `docker ps -a` | Shows all containers, even the stopped ones, so we can check that the status changed to "Exited." |
| `docker rm noel-nginx` | Deletes the stopped container completely. |
