#!/bin/sh
/opt/efak/bin/ke.sh start
tail -f -n 100 /opt/efak/logs/log.log
