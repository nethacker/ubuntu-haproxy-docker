#!/bin/bash

exec haproxy -f /etc/haproxy/haproxy.cfg -p /var/run/haproxy/haproxy.pid
