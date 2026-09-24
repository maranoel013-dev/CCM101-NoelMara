
# Types of Cloud Storage

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | Splits data into fixed-size blocks and stores each one separately. The system puts the blocks back together when needed, similar to how a normal hard drive works. | Best for things like databases and running virtual machines, where the system needs fast and direct access to the data. | AWS EBS |
| File Storage | Stores data as files inside folders, the same way a shared network drive works. Multiple people or systems can access the same files at once. | Best for shared documents, team files, and applications that need a simple folder structure. | AWS EFS |
| Object Storage | Stores data as separate objects, each with its own unique ID and extra information (metadata) attached to it, instead of using folders. | Best for storing large amounts of unstructured data like photos, videos, and backups. | AWS S3 |

## Why Object Storage Fits This Client

Object Storage is the best choice for a photo-sharing app because it can easily handle millions of files without slowing down or running out of space. Each photo is stored as its own object, so photos can be found quickly using their unique ID instead of searching through folders. It is also more affordable and scalable than Block Storage, which is better suited for smaller, structured data like databases.
