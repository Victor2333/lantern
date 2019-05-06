FROM  ubuntu:16.04
MAINTAINER victor <tonyyunhan1997@163.com>
WORKDIR /root
ADD ./lantern_linux_amd64 .
EXPOSE 3128/tcp 8080/tcp

ENTRYPOINT ["./lantern_linux_amd64", "--configdir=/root", "--headless=true", "--proxyall=true", "--startup=false", "--clear-proxy-settings=false", "--addr=0.0.0.0:3128", "--uiaddr=0.0.0.0:8080"]
