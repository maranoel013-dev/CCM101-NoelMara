# Two-Tier Architecture

## The Web/Application Tier
This is the part the user actually interacts with. It handles things like showing the website or app interface, processing requests from the browser, and sending back the right information. In this project, this tier is the Nextcloud container.

## The Database Tier
This tier is responsible for storing data permanently, such as user accounts, login credentials, and file information. It does not handle the interface or user requests directly, its only job is to store and manage data reliably. In this project, this tier is the MariaDB container.

## Why Separate Them?
Keeping the web application and the database in separate containers makes the system easier to manage, update, and scale independently. For example, the web app can be restarted or updated without affecting the stored data in the database. It also makes the system more secure, since the database is not directly exposed to users and only communicates with the app container internally.
