FROM alpine:latest
RUN apk add --no-cache chromium socat multirun
COPY docker-entrypoint docker-entrypoint
ENTRYPOINT ["/docker-entrypoint"]
