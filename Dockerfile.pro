# 基础镜像 
FROM docker-ubuntu:pro
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 安装gccgo
RUN apt-get update && apt-get install -y gccgo && rm -rf /var/lib/apt/lists/*
# 创建默认代码路径
RUN mkdir $HOME/golang && export GOPATH=$HOME/golang && export PATH=$PATH:$GOPATH/bin
