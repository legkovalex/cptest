#!/bin/bash
/etc/init.d/nginx start
/etc/init.d/haproxy start
sleep 5
while true; do /bin/false; sleep 10; done;
# haproxy -f /etc/haproxy/haproxy.cfg