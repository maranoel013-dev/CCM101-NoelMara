# Final Reflection

When I started Mission 1, the cloud was just an idea to me. By Mission 10 I had built a private cloud storage system myself: a Linux VM, Docker, a two-container Nextcloud and MariaDB stack, a firewall and an automated backup.

The most useful lesson was that small details break things. I had a YAML indentation error that made Docker Compose refuse to start. I hit a permission error because my user was not allowed to use Docker. I also had trouble pasting into the VirtualBox console, so I connected over SSH from Windows instead. Each problem taught me to read the error message first.

Earlier missions gave me the pieces: containers in Mission 4, object storage in Mission 5 and Docker Compose in Mission 6. This mission made me combine them without a step-by-step guide. I added persistent volumes and tested them by rebooting the VM. The containers came back by themselves, which showed me why `restart: always` and volumes matter.

Security and automation changed how I think about servers. A server is not finished when the app loads. It also needs a firewall with default deny, only the ports it needs, and a backup that runs without anyone remembering to do it. Writing the cron job showed me that real operations work is mostly small scripts that run every day.

I am proud that I can now explain every layer of the diagram, from the hypervisor down to the volumes. I still have more to learn, such as stronger secrets handling and a tested restore routine. This course took me from typing basic commands to running a small piece of infrastructure.
