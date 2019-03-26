# Shadowsocks
FROM ubuntu

LABEL maintainer="Abreto<m@abreto.net>"

RUN apt-get update && apt-get install -qy \
    git \
    python-pip \
    python-pysodium

RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

WORKDIR /bootstrap
COPY entrypoint.sh .

EXPOSE 443
ENTRYPOINT [ "bash", "entrypoint.sh" ]
