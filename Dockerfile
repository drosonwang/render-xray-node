FROM alpine:latest
RUN apk add --no-cache curl unzip \
 && curl -fsSL -o /tmp/x.zip https://github.com/XTLS/Xray-core/releases/download/v26.11.9/Xray-linux-64.zip \
 && unzip -q /tmp/x.zip -d /tmp/x && mv /tmp/x/xray /usr/local/bin/xray && chmod +x /usr/local/bin/xray \
 && rm -rf /tmp/x.zip /tmp/x
COPY entrypoint.sh /entrypoint.sh
COPY config.template.json /config.template.json
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
