#!/bin/bash
sh /opt/efak/bin/ke.sh start
#tail -f -n 100 /opt/efak/kms/logs/catalina.out
tail -f /opt/efak/kms/logs/catalina.out
