FROM alpine:latest as download

RUN apk add --no-cache -U jq unzip && \
    if [ $(arch) = "x86_64" ]; then wget -qO- https://api.github.com/repos/pocketbase/pocketbase/releases/latest | jq -r '.assets[].browser_download_url | select( endswith("linux_amd64.zip") )' | xargs wget -O pocketbase.zip; fi && \
    if [ $(arch) = "aarch64" ]; then wget -qO- https://api.github.com/repos/pocketbase/pocketbase/releases/latest | jq -r '.assets[].browser_download_url | select( endswith("linux_arm64.zip") )' | xargs wget -O pocketbase.zip; fi && \
    unzip pocketbase.zip

FROM scratch

COPY --from=download pocketbase pocketbase

EXPOSE 8090

ENTRYPOINT ["./pocketbase", "serve", "--http=0.0.0.0:8090"]