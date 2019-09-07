FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    curl \
  && add-apt-repository ppa:vbernat/haproxy-1.8 && apt-get update && apt-get install -y haproxy \
  && rm -rf /var/lib/apt/lists/*

ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD haproxy-start.sh /haproxy-start.sh

CMD ["bash", "/haproxy-start.sh"]

EXPOSE 80
EXPOSE 443
