FROM alpine:3.11.3 AS build

ARG sentinel_version=0.14.3
ARG uid=1000
ARG gid=1000

WORKDIR /app

RUN addgroup -g ${gid} sentinel \
 && adduser -u ${uid} -s /bin/sh -S sentinel \
 && mkdir -p /app \
 && chown -R sentinel:sentinel /app \
 && wget https://releases.hashicorp.com/sentinel/${sentinel_version}/sentinel_${sentinel_version}_linux_amd64.zip -O sentinel.zip \
 && unzip sentinel.zip \
 && apk --no-cache add ca-certificates

FROM scratch

COPY --from=build /etc/ssl/certs /etc/ssl/certs
COPY --from=build /etc/passwd /etc/group /etc/shadow /etc/
COPY --from=build --chown=sentinel:sentinel /app/sentinel /bin/sentinel

USER sentinel

ENTRYPOINT ["sentinel"]
