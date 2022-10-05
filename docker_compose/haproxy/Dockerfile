FROM debian
run apt update -y && apt install haproxy -y
RUN mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.bak
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
#RUN /etc/init.d/haproxy restart
#run haproxy -d -f /etc/haproxy/haproxy.cfg &
ENTRYPOINT ["/bin/bash", "-c", "/etc/init.d/haproxy restart && tail -f /dev/null"]


