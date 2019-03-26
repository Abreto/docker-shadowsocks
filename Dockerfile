# Shadowsocks
FROM ubuntu

LABEL maintainer="Abreto<m@abreto.net>"

RUN apt-get update && apt-get install -qy \
    python-pip

RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

WORKDIR /bootstrap
COPY entrypoint.sh .

ENTRYPOINT [ "bash", "entrypoint.sh" ]
