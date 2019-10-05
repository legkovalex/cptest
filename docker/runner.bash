#!/bin/bash
/etc/init.d/nginx start
/etc/init.d/haproxy start
sleep 1000
# haproxy -f /etc/haproxy/haproxy.cfg