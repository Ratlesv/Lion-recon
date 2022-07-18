#! /bin/bash 

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

echo "[+] Installing Go-Lang....."
wget https://go.dev/dl/go1.18.4.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

echo "[+] Installing Assestfinder..."
go install github.com/tomnomnom/assetfinder@latest
echo "[+] Installing SubFinder......."
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo "[+] Installing Findomain........"

echo "[+] Installing Amass......."
go install -v github.com/OWASP/Amass/v3/...@master

echo "[+] Installing SubList3r........."
git clone https://github.com/aboul3la/Sublist3r.git 
mv Sublist3r /opt/
pip3 install -r /opt/Sublist3r/requirements.txt

#----- Now Installing Tools Which Crawls urls & Parameters

echo "[+] Installing Waybackurls....."
go install github.com/tomnomnom/qsreplace@latest
echo "[+] Installing gau - Get All Urls"
go install github.com/lc/gau/v2/cmd/gau@latest
echo "[+] Installing gauplus........"
go install github.com/bp0lr/gauplus@latest
echo "[+] Installing Paramspider......"
git clone https://github.com/devanshbatham/ParamSpider.git
mv ParamSpider /opt/
pip3 install -r /opt/ParamSpider/requirements.txt
#-----

echo "Installing httpx........"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
#--------

echo "Installing qsreplace....."
go install github.com/tomnomnom/qsreplace@latest
#-----------
echo "Installing Sqlmap......"
wget https://github.com/sqlmapproject/sqlmap/tarball/master
tar -zxvf master
mv sqlmapproject-sqlmap-c722f8e /opt/Sqlmap
#------------ Installing ScreenShoter
#------------ Installing Few useFull Tools 
ffuf
gf patterns



























