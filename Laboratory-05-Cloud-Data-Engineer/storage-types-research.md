# Types of Cloud Storage

| Type | Description | Primary Use Case | Cloud Provider Example |
|------|-------------|------------------|------------------------|
| Block Storage | Saves data in small equal-sized pieces (blocks). Works like a hard drive attached to a computer. | Databases and the main disk of a server | AWS EBS |
| File Storage | Saves data as files inside folders. Many computers can share the same folders over a network. | Shared folders and team documents | AWS EFS |
| Object Storage | Saves each file as an "object" with its own ID and details about the file. Everything is stored in one big flat space and opened through the internet. | Photos, videos, and backups | AWS S3 |

## Recommendation to the Client

Object Storage is the best choice for your photo app because it can store millions of photos and grow easily as you get more users. Each photo gets its own link, so your app can find and show it quickly. It also costs less than the other types when storing a large number of files.
