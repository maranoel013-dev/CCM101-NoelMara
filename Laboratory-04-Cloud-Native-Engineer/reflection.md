# Mission Reflection

This lab helped me understand why containers are becoming so popular in cloud computing today. One of the biggest differences I noticed was boot time. Setting up an operating system on a Virtual Machine can take several minutes or even hours because the whole OS has to load before anything works. With Docker, running the Nginx container only took a few seconds. This is because it did not need to load its own operating system. It simply used the one already running on the host machine.

I also learned why port mapping matters. When I ran the container with `-p 8080:80`, I was connecting port 8080 on my computer to port 80 inside the container, which is where Nginx was listening. Without this mapping, I would not have been able to open the web page from outside the container, since containers keep their ports closed by default.

Another thing I learned was what happens when a container is removed. Running `docker rm` deletes the container completely, along with any data stored inside it, unless that data was saved somewhere outside the container. This showed me that containers are meant to be easy to replace, not a permanent place to keep data.

I also thought about how containers change the way developers and IT operations teams work together. Since a container packages an app with everything it needs to run, developers can build something that behaves the same way on their own computer as it does once it is deployed. This avoids the common problem of code "working on my machine" but breaking somewhere else, and it makes it easier for operations teams to deploy and scale applications smoothly. This is a big part of how DevOps works.

Lastly, my GitHub portfolio keeps growing with each lab. I now have a clearer set of folders, documentation, and screenshots that show how I progressed from basic cloud concepts to actually deploying and managing containers, which I can use later to show my skills.
