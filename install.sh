#! /bin/bash 
speedtest
sudo apt install figlet -y
figlet "Installing Requirements" 
sudo apt update -y
sudo apt upgrade -y
sudo apt install python -y
sudo apt install python2 -y
sudo apt install python3 -y
sudo apt install python-pip -y
sudo apt install python3-pip -y
sudo apt install git -y
sudo apt install php -y
#sudo apt-get install libcurl4-openssl-dev -y 
#sudo apt-get install libssl-dev -y
#sudo apt-get install jq -y
#sudo apt-get install ruby-full -y
#sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev -y 
#sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y
#sudo apt-get install python-setuptools -y
#sudo apt-get install libldns-dev -y
#sudo apt-get install python-dnspython -y 
#sudo apt-get install rename -y
#sudo apt-get install xargs -y
#sudo apt install -y awscli -y
#sudo apt-get install nmap -y
echo "[+] Installing Go-Lang....." 
wget https://go.dev/dl/go1.19.2.linux-amd64.tar.gz
cp go1.19.2.linux-amd64.tar.gz /root/
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

figlet "Installing Recon Tools"
echo "[+]Installing ffuf...."
go install github.com/ffuf/ffuf@latest
cp /root/go/bin/ffuf /usr/local/bin/
echo "[+]Installing qsreplace...."
go install github.com/tomnomnom/qsreplace@latest
cp /root/go/bin/qsreplace /usr/local/bin/
echo "[+]Installing httpx, httprobe...."
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
cp /root/go/bin/httpx /usr/local/bin/
go install github.com/tomnomnom/httprobe@latest 
cp /root/go/bin/httprobe /usr/local/bin/
echo "[+]Installing gf-patterns...."
go install github.com/tomnomnom/gf@latest
cp /root/go/bin/gf /usr/local/bin/
echo "[+]Installing kxss, Gxss...."
go install github.com/KathanP19/Gxss@latest
cp /root/go/bin/Gxss /usr/local/bin/
go install github.com/Emoe/kxss@latest
cp /root/go/bin/kxss /usr/local/bin/
echo "[+]Installing ScreenShoters (Eye & GoWitness)...."
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
mv EyeWitness /opt/
sudo /opt/EyeWitness/Python/setup/setup.sh
go install github.com/sensepost/gowitness@latest
cp /root/go/bin/gowitness /usr/local/bin/

#--------------------------------------Installing SubDomains Finders--------------------------------------------------
echo "[+] Installing Assestfinder..." 
go install github.com/tomnomnom/assetfinder@latest
cp /root/go/bin/assetfinder /usr/local/bin
echo "[+] Installing SubFinder......." 
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
cp /root/go/bin/subfinder /usr/local/bin/
echo "[+] Installing Findomain........"
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux.zip
chmod +x findomain
sudo mv findomain /usr/bin/findomain
findomain --help
echo "[+] Installing Amass......." 
go install -v github.com/OWASP/Amass/v3/...@master
cp /root/go/bin/amass /usr/local/bin/
echo "[+] Installing SubList3r........." 
git clone https://github.com/aboul3la/sublist3r.git 
mv sublist3r /opt/
pip3 install -r /opt/sublist3r/requirements.txt
#------------------------------------------Installing Url Crawlers ---------------------------------------------------
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
git clone https://github.com/devanshbatham/paramspider.git
mv paramspider /opt/
pip3 install -r /opt/paramspider/requirements.txt



figlet "Installing Url Fuzzers"
echo "Installing Sqlmap......" 
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap
mv sqlmap /opt/
echo "Installing Commix..."
git clone https://github.com/commixproject/commix.git commix
mv commix /opt/
python3 /opt/commix/setup.py
echo "Installing crlfuzzers...."
GO111MODULE=on go install github.com/dwisiswant0/crlfuzz/cmd/crlfuzz@latest
cp /root/go/bin/crlfuzz /usr/local/bin/
echo "Installing tplmap..."
https://github.com/epinna/tplmap.git
mv tplmap /opt/
pip3 install -r /opt/tplmap/requirements.txt 
echo "Installing Dalfox..."
go install github.com/hahwul/dalfox/v2@latest
cp /root/go/bin/dalfox /usr/local/bin/
echo "Installing XXE Finder...."
echo "Installing smuggler & "
git clone https://github.com/defparam/smuggler.git
mv smuggler /opt/




figlet "Installing Domain Fuzzers"
echo "Installing Nuclei....."
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
cp /root/go/bin/nuclei /usr/local/bin/
nuclei
echo "Installing Nmap...."
apt install nmap -y
echo "Installing Nikto...."
apt install nikto -y 
echo "Installing Subzy....."
go install -v github.com/lukasikic/subzy@latest
cp /root/go/bin/subzy /usr/local/bin/




























