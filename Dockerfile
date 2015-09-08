# 基础镜像 
FROM docker-python
# 维护人员
MAINTAINER  liuhong1.happy@163.com
# 添加环境变量
ENV USER_NAME admin
ENV SERVICE_ID gccgo
# 安装gccgo
RUN apt-get update && apt-get install -y gccgo
# 创建默认代码路径
RUN mkdir $HOME/golang && export GOPATH=$HOME/golang && export PATH=$PATH:$GOPATH/bin
