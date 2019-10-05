FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install nginx haproxy vim mc 
ADD haproxy.cfg /etc/haproxy/haproxy.cfg
ADD nginx_default /etc/nginx/sites-available/default
ADD runner.bash /opt/runner.bash
RUN chmod +x /opt/runner.bash