#!/bin/bash
# step 1: ж�ذ�װ���ϰ汾
sudo apt-get remove docker docker-engine
# Step 2: ��װ��Ҫ���߰�
sudo apt-get install apt-transport-https ca-certificates curl python-software-properties software-properties-common
# Step 3: ���²���װDocker-CE
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian wheezy stable"
sudo apt-get update
sudo apt-get install docker-ce
# Step 4: ����Docker����
sudo service docker start
# Step 5: ���þ��������
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://wr74te5j.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
