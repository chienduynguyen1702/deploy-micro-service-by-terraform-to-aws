#! /bin/bash
timedatectl set-timezone Asia/Saigon
#install docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
# apt-cache policy docker-ce
sudo apt install docker-ce -y
# sudo usermod -aG docker ${ubuntu}
# su - ${USER}

# apt update -y
# # Install nodejs version 18.x
# curl -s https://deb.nodesource.com/setup_18.x | sudo bash
# apt install nodejs -y
# apt install npm -y
# npm install -g nodemon

# Clone reposiroty
git clone https://ChienDuyNguyen1702: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@github.com/ChienDuyNguyen1702/deploy-micro-service-by-terraform-to-aws.git /home/ubuntu/deploy-micro-service-by-terraform-to-aws
# Install nginx
# apt install nginx -
# systemctl enable nginx
# systemctl start nginx

# add sites configuration to nginx site-available
# cp /home/ubuntu/ChatGPT-for-Mobile-Notification/configuration/grweb /etc/nginx/sites-available/
# ln -s /etc/nginx/sites-available/grweb /etc/nginx/sites-enabled/grweb
# rm /etc/nginx/sites-available/default 
# unlink /etc/nginx/sites-enabled/default 
# # reload and apply
# nginx -s reload

# assign permission for ubuntu:ubuntu
# chown ubuntu:ubuntu -R /home/ubuntu/ChatGPT-for-Mobile-Notification
# cd /home/ubuntu/ChatGPT-for-Mobile-Notification
# instal packages and dependencies => start
# npm install
# npm start &

cd  /home/ubuntu/deploy-micro-service-by-terraform-to-aws
docker compose build 
docker compose up -d
