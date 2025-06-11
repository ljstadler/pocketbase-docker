FROM busybox AS download

ARG TARGETOS
ARG TARGETARCH
ARG VERSION

ADD https://github.com/pocketbase/pocketbase/releases/download/v${VERSION}/pocketbase_${VERSION}_${TARGETOS}_${TARGETARCH}.zip /pb.zip

RUN unzip pb.zip -d /pb

FROM gcr.io/distroless/static

COPY --from=download /pb/pocketbase /pb/pocketbase

EXPOSE 8090

ENTRYPOINT ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090"]