#!/bin/bash
# step 1: 卸载安装过老版本
sudo apt-get remove docker docker-engine
# Step 2: 安装必要工具包
sudo apt-get install apt-transport-https ca-certificates curl python-software-properties software-properties-common
# Step 3: 更新并安装Docker-CE
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian wheezy stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo gpasswd -a ${USER} docker
# Step 4: 开启Docker服务
sudo service docker start
# Step 5: 配置镜像加速器
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
