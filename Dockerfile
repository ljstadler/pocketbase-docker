FROM alpine:latest AS download

ARG TARGETOS
ARG TARGETARCH

RUN apk add --no-cache jq unzip && \
    wget -qO- https://api.github.com/repos/pocketbase/pocketbase/releases/latest | \
    jq --arg TARGETARCH "$TARGETARCH" --arg TARGETOS "$TARGETOS" -r '.assets[].browser_download_url | select( endswith($TARGETOS + "_" + $TARGETARCH + ".zip") )' | \
    xargs wget -O pocketbase.zip && \
    unzip pocketbase.zip -d /pocketbase

FROM gcr.io/distroless/static

COPY --from=download /pocketbase /pocketbase

WORKDIR /pocketbase

EXPOSE 8090

ENTRYPOINT ["./pocketbase", "serve", "--http=0.0.0.0:8090"]