## 说明
本项目主要用于hub.docker.com镜像制作（efak官方不提供docker镜像，因此自己做一个）

## 用法：
```
docker run -d -p 8048:8048 \
--restart=always  --name efak \
-v /tmp/efak/logs:/opt/efak/logs \
-v /tmp/efak/efak.properties:/opt/efak/system-config.properties \
-v /tmp/efak/db:/opt/efak/db \
huangh/efak:3.0.1 
```
访问：http://localhost:8048
