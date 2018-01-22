#!/bin/bash
# step 1: ��װ��Ҫ��һЩϵͳ����
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# Step 2: ������Դ��Ϣ
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
# Step 3: ���²���װDocker-CE
sudo yum makecache fast
sudo yum -y install docker-ce
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
