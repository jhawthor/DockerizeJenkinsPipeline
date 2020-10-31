## #######################
## Jenkins installation 
## tested on Ubnutu 20.04
## ####################### 
#!/bin/sh
sudo -i
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
apt-get update
apt install -y openjdk-8-jdk
java -version
apt-get install -y jenkins
systemctl status jenkins
