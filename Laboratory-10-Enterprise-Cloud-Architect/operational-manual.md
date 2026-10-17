# Operational Manual

Handover guide for the client's IT team: how to deploy, secure and maintain this Nextcloud + MariaDB stack.

## 1. Architecture
Host laptop (Windows) > VirtualBox > Ubuntu Server VM > UFW firewall > Docker > Nextcloud container + MariaDB container. See `architecture-diagram.png`.

## 2. Deploy

### 2.1 Virtual machine
1. Create an Ubuntu Server VM in VirtualBox (4 GB RAM recommended, 25 GB disk).
2. During install, tick **Install OpenSSH server**. Do not select any featured snaps.
3. In VirtualBox: Settings > Network > Adapter 1 (NAT) > Port Forwarding. Add:

| Name | Protocol | Host Port | Guest Port |
|---|---|---|---|
| SSH | TCP | 2222 | 22 |
| Nextcloud | TCP | 8080 | 8080 |

4. Update the system:
```
sudo apt update && sudo apt upgrade -y
```

### 2.2 Install Docker
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker run hello-world
docker compose version
```

### 2.3 Start the stack
```
mkdir ~/nextcloud-stack
cd ~/nextcloud-stack
nano docker-compose.yml     # paste the file from this repository
sudo docker compose up -d
sudo docker compose ps
```
Open `http://localhost:8080` on the host. The Nextcloud setup page should appear.

### 2.4 Persistent storage
Named volumes `db_data` (database) and `nextcloud_data` (Nextcloud files) live outside the containers, so data survives container removal and VM reboots. `restart: always` brings both containers back after a reboot.

## 3. Secure (UFW)
```
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 8080/tcp
sudo ufw enable
sudo ufw status verbose
```
- Always allow SSH (22) **before** enabling UFW, or the SSH session is lost.
- Only port 8080 is published by Docker. The MariaDB port (3306) is not published to the host.
- Note: Docker adds its own firewall rules for published ports. Publish only the ports that should be public.
- The passwords in this repository are lab values. Change them and keep them out of Git for real use.

## 4. Automate (backup)
`automation-script.sh` dumps the `nextcloud_db` database, compresses it to `~/backups/nextcloud_db_DATE.sql.gz`, deletes backups older than 7 days and writes a line to `~/backups/backup.log`.
```
chmod +x ~/nextcloud-stack/automation-script.sh
sudo ~/nextcloud-stack/automation-script.sh
```
Schedule it (root crontab, because the script uses Docker):
```
echo "0 2 * * * /home/leon/nextcloud-stack/automation-script.sh" | sudo crontab -
sudo crontab -l
```
`0 2 * * *` means every day at 02:00. The VM clock is UTC.

## 5. Maintain
| Task | Command |
|---|---|
| Status | `cd ~/nextcloud-stack && sudo docker compose ps` |
| Logs | `sudo docker compose logs --tail 50 app` |
| Update images | `sudo docker compose pull && sudo docker compose up -d` |
| Check backups | `ls -lh ~/backups` and `cat ~/backups/backup.log` |
| Firewall status | `sudo ufw status verbose` |
| Stop (keeps data) | `sudo docker compose down` |

Warning: `docker compose down -v` also deletes the volumes and all data.

### Restore the database from a backup
```
gunzip < ~/backups/FILE.sql.gz | sudo docker exec -i nextcloud-stack-database-1 mysql -u root -pcloudnova_root nextcloud_db
```

## 6. Troubleshooting
| Problem | Fix |
|---|---|
| `permission denied ... docker.sock` | Use `sudo`, or add the user to the docker group and log in again |
| `did not find expected key` when starting | A YAML indentation error. Use spaces, never tabs |
| Page does not load on the host | Check the VirtualBox port forwarding rule and `sudo ufw status` |
| Locked out of SSH after enabling UFW | Use the VirtualBox console and run `sudo ufw allow 22/tcp` |
