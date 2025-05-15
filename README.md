<div align=center>

# pocketbase-docker

## [PocketBase](https://pocketbase.io) Docker image

</div>

## Usage

### Docker Compose

```yaml
services:
    pocketbase:
        container_name: pocketbase
        image: ghcr.io/ljstadler/pocketbase-docker:latest
        ports:
            - 8090:8090
        volumes:
            - ./pb_data:/pb/pb_data
```

### Docker Run

```bash
docker run -d --name pocketbase -p 8090:8090 -v ./pb_data:/pb/pb_data ghcr.io/ljstadler/pocketbase-docker
```
