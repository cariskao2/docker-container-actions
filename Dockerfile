# Dockerfile
# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
# 啟動容器時就會執行entrypoint.sh這個腳本(最終action.yml的args會傳到這裡)
ENTRYPOINT ["/entrypoint.sh"]
