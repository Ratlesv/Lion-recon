#! /bin/bash 
speedtest
sudo apt install lolcat -y
echo "Installing Requirements........" | lolcat
sudo apt update -y
sudo apt upgrade -y
sudo apt install python -y
sudo apt install python2 -y
sudo apt install python3 -y
sudo apt install python-pip -y
sudo apt install python3-pip -y
sudo apt install git -y
sudo apt install php -y
sudo apt install lolcat -y
sudo apt install figlet -y
sudo apt-get install libcurl4-openssl-dev -y 
sudo apt-get install libssl-dev -y
sudo apt-get install jq -y
sudo apt-get install ruby-full -y
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev -y 
sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y
sudo apt-get install python-setuptools -y
sudo apt-get install libldns-dev -y
sudo apt-get install python-dnspython -y 
sudo apt-get install rename -y
sudo apt-get install xargs -y
sudo apt install -y awscli -y
sudo apt-get install nmap -y
#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing Go-Lang-------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Go-Lang....."
wget https://go.dev/dl/go1.18.4.linux-amd64.tar.gz
cp go1.18.4.linux-amd64.tar.gz /root/
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing Nuclei--------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing SubDomains Finders--------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Assestfinder..."
go install github.com/tomnomnom/assetfinder@latest
cp /root/go/bin/assetfinder /usr/local/bin
echo "[+] Installing SubFinder......."
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
cp /root/go/bin/subfinder /usr/local/bin/
echo "[+] Installing Findomain........"
wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
mv findomain-linux findomain
chmod 777 findomain
cp findomain /usr/local/bin
echo "[+] Installing Amass......."
go install -v github.com/OWASP/Amass/v3/...@master
cp /root/go/bin/amass /usr/local/bin/
echo "[+] Installing SubList3r........."
git clone https://github.com/aboul3la/Sublist3r.git 
mv Sublist3r /opt/
pip3 install -r /opt/Sublist3r/requirements.txt
#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing ScreenShoters---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cp -r EyeWitness /opt/
sudo /opt/EyeWitness/Python/setup/setup.sh
#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing Url Crawlers ---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Waybackurls....."
go install github.com/tomnomnom/waybackurls@latest
cp /root/go/bin/waybackurls /usr/local/bin/
echo "[+] Installing gau - Get All Urls"
go install github.com/lc/gau/v2/cmd/gau@latest
cp /root/go/bin/gau /usr/local/bin/
echo "[+] Installing gauplus........"
go install github.com/bp0lr/gauplus@latest
cp /root/go/bin/gauplus /usr/local/bin/
echo "[+] Installing Paramspider......"
git clone https://github.com/devanshbatham/Paramspider.git
mv Paramspider /opt/
pip3 install -r /opt/Paramspider/requirements.txt
#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing Subs Live Checker---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "Installing httpx........"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
cp /root/go/bin/httpx /usr/local/bin/
#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing Screenshoters---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------------Installing Sql Map---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "Installing Sqlmap......"
wget https://github.com/sqlmapproject/sqlmap/tarball/master
tar -zxvf master
mv sqlmapproject-sqlmap-c722f8e /opt/Sqlmap
#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing Usefull Tools---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "Installing qsreplace....."
go install github.com/tomnomnom/qsreplace@latest
cp /root/go/bin/qsreplace /usr/local/bin/
echo "[+] Installing ffuf"
go install github.com/ffuf/ffuf@latest
cp /root/go/bin/ffuf /usr/local/bin/
echo "[+] Installing gf Patterns"
go install github.com/tomnomnom/gf@latest
cp /root/go/bin/gf /usr/local/bin/

























