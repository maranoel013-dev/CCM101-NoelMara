# MinIO Deployment

## Steps I Took

1. Opened the KillerCoda Ubuntu Playground.
2. Ran the Docker command below to download and start the MinIO server.
3. Ran `docker ps` to check that the container was running.
4. Opened port 9001 in the Traffic / Ports tab to get to the MinIO web console.
5. Logged in with the username and password I set in the Docker command.
6. Created a bucket and uploaded a file.

## Docker Command Used

    docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
    -e "MINIO_ROOT_USER=cloudadmin" \
    -e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
    elestio/minio server /data --console-address ":9001"

Note: I used the `elestio/minio` image because `minio/minio` could not be downloaded (access denied).

## Web Console Port

9001

## Bucket Created

client-photos

## What the -e Flags Did

The `-e` flag sets an environment variable inside the container. In my command:

- `MINIO_ROOT_USER=cloudadmin` set the admin username.
- `MINIO_ROOT_PASSWORD=CloudNova2026!` set the admin password.

I used these two values to log in to the MinIO web console.
