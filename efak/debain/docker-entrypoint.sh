#!/usr/bin/env bash
sh /opt/efak/bin/ke.sh start
tail -100f /opt/efak/kms/logs/catalina.out
