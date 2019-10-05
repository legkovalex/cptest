FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install nginx haproxy
ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD nginx_default /etc/nginx/sites-available/default
ADD runner.bash /opt/runner.bash
RUN chmod +x /opt/runner.bash
# CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]