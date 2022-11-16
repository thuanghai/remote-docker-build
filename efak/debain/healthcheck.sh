#!/usr/bin/env bash
if [ `jps |grep KafkaEagle | wc -l` != 1 ]; then
  ps -ef | grep tail | head -1 |awk '{print $2}' | xargs -I {} kill -9 {}
  exit 1
else
  exit 0
fi
