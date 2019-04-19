# docker-shadowsocks
A light shadowsocks server.

```
# docker run -dt \
    --restart=always \
    -p <outport>:443 \
    abreto/shadowsocks[ -k <password>[ --workers <workers>]]
```
