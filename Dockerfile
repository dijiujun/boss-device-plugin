FROM alpine:latest
MAINTAINER dijiujun <dijiujun@163.com>

COPY ./build/boss /root/boss

CMD ["/root/boss"]
