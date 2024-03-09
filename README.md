<div align=center>

# pocketbase-docker

## PocketBase Docker image

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) ![PocketBase](https://img.shields.io/badge/PocketBase-B8DBE4?style=for-the-badge&logo=PocketBase&logoColor=white)

</div>

## Usage

```
docker run -d --name pocketbase -p 8090:8090 -v ./pb_data:/pb_data -v ./pb_migrations:/pb_migrations -v ./pb_public:/pb_public ljstadler/pocketbase:latest
```
