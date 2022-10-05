FROM debian
run apt update -y && apt install haproxy -y
RUN mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

ENTRYPOINT ["tail", "-f", "/dev/null"]


