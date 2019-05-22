# docker-shadowsocks
A light shadowsocks server.

```
# docker run -d \
    --restart=always \
    -p <outport>:443 \
    abreto/shadowsocks[ -k <password>[ --workers <workers>]]
```
