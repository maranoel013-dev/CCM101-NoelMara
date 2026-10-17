# Laboratory 10: Enterprise Cloud Architect

## Mission Overview
A secure, automated, multi-tier private cloud storage system. Nextcloud (web tier) and MariaDB (database tier) run as Docker containers on an Ubuntu Server VM in VirtualBox, deployed with Docker Compose.

## Stack
| Layer | Technology |
|---|---|
| Hypervisor | VirtualBox (Type 2) |
| OS | Ubuntu Server 26.04 LTS |
| Containers | Docker Engine + Docker Compose |
| Web tier | Nextcloud |
| Database tier | MariaDB 10.6 |
| Firewall | UFW (default deny incoming) |
| Automation | Bash script + cron |

## Requirements Checklist
- Architecture diagram: `architecture-diagram.png`
- Ubuntu Server VM reachable from the host browser (NAT port forwarding)
- Multi-container stack with persistent volumes: `docker-compose.yml`
- UFW enabled, default deny, only ports 22 and 8080 allowed
- Backup script `automation-script.sh`, scheduled with cron at 2:00 AM daily
- Operational manual: `operational-manual.md`
- Final reflection: `final-reflection.md`

## Files
- `architecture-diagram.png`
- `docker-compose.yml`
- `automation-script.sh`
- `operational-manual.md`
- `final-reflection.md`
