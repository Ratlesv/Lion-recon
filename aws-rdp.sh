apt-get update -y
apt-get upgrade -y
apt install ubuntu-desktop -y
apt install xrdp -y
systemctl status xrdp
adduser xrdp ssl-cert
sudo ufw allow 3389
sudo ufw reload
