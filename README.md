<div align=center>

# pocketbase-docker

## PocketBase Docker image

</div>

## Usage

```
docker run -d --name pocketbase -p 8090:8090 -v ./pb_data:/pb_data -v ./pb_migrations:/pb_migrations -v ./pb_public:/pb_public ljstadler/pocketbase:latest
```
