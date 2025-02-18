FROM alpine:latest
RUN apk add --no-cache chromium socat supervisor
COPY supervisord.conf /etc/supervisord.conf
ENV PORT=9222
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
