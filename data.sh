#!/bin/bash
sudo yum -y update
sudo yum install -y git
sudo yum install -y python3-pip
git clone https://github.com/Jyothirmai-503/MyFuel.git
cd /
sudo mv MyFuel/ /home/ec2-user/
cd /home/ec2-user/
cd MyFuel/
pip3 install -r requirements.txt
python3 app.py
