FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    curl \
  && rm -rf /var/lib/apt/lists/*
RUN add-apt-repository ppa:vbernat/haproxy-1.8 && apt-get install -y haproxy
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
CMD haproxy -f /etc/haproxy/haproxy.cfg -D 
CMD bash
