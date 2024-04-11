<div align=center>

# pocketbase-docker

## PocketBase Docker image

</div>

## Usage

```
docker run -d --name pocketbase -p 8090:8090 -v ./pb/data:/pb_data -v ./pb/hooks:/pb_hooks -v ./pb/migrations:/pb_migrations -v ./pb/public:/pb_public ghcr.io/ljstadler/pocketbase-docker
```
