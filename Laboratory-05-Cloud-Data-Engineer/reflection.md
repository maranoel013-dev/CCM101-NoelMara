# Mission Reflection

Object storage is better for millions of photos because each photo has its own link, so it is easy to find. It is also cheaper than block storage when storing a large number of files. A traditional hard drive can fill up, but object storage can keep growing as more photos are added.

Docker made it easier because I only needed one command to start the MinIO server, and I did not have to install or set it up by hand. It was not perfectly smooth, because the image in the instructions failed to download. After I used a different image, the server started right away.

A bucket is like a folder in cloud storage where files, called objects, are kept. It is not the whole cloud storage, but one place inside it. In this lab, I created a bucket named client-photos and uploaded a file into it. It helps keep the files organized in one place.

Large companies keep copies of their data on different servers and in different locations, not just one. If one server crashes, another copy is still there, so the data is not lost. This works like a backup.

At first, the command line was confusing for me. The image from the instructions did not work, and I was not sure why. I learned that docker run is the command that starts the MinIO server, and docker ps shows the containers that are running so I can check that it worked. I am still not fully confident, but after this lab I understand these two commands better. I also know that when a command fails, I can read the error and try a different way. I still need more practice to feel comfortable.
