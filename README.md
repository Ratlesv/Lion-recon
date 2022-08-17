# TheLionRecon 
### TheLionRecon
Hello Security Family 💖,
I Hope You Are Doing Great.
TheLionRecon is a Simple Bash Script. Combination of Tools.
Which Automates Recon. And Finds Common Vulnerabilities.

### Summary
## Scanning Domains
1. TheLionRecon First Enumurate Subdomains Passive & Active Resources >> $1/recon/final_subs.txt 
2. Filtering Live SubDomains >> $1/recon/live_subs.txt 
3. ScreenShoting Live SubDomains >> $1/recon/screenshots/
5. Checking For Common CVE's >> $1/recon/cves.txt
6. Scanning With Nikto >> $1/recon/nikto.txt
7. Whois Info >> $1/recon/whois.txt
8. Headers Info >> $1/recon/headers.txt
9. Full Blind Scan With Nucluei >> $1/recon/nuclei.txt

10. Scanning For SubDomain TakeOver >> $1/subs_vuln/sub_take_over.txt
11. Scanning For 
12. Scanning
13. Scanning
14. Scanning
## Scanning Parameters
1. Then Enumurate Urls & Parameters Using Passive & Active Resources >> $1/recon/final_params.txt 

2. Scanning For Open Redirects >> $1/params_vuln/open_redirect.txt
3. Scanning For External SSRF >> $1/params_vuln/eSSRF.txt
4. Scanning For HTML Injection >> $1/params_vuln/HTMLi.txt
5. Scanning For CRLF Injection >> $1/params_vuln/crlfi.txt
6. Scanning For XXE Injection >> $1/params_vuln/xxei.txt
7. Scanning For Command Injection >> $1/params_vuln/commandi.txt
8. Scanning For Sql Injection >> $1/params_vuln/sqli.txt
9. Scanning For Local File Inclusion >> $1/params_vuln/lfi.txt






### Finds Common Vulnerabilities After Recon
+ Reflected Xss
+ HTML Injection
+ External SSRF
+ Open Redirects
+ Sql Injection
+ Xss Through Header
+ Open Redirect Through Header
+ CORS
+ Clickjacking
+ XXE Injection ( Adding Soon )
+ Command Injection ( Adding Soon )
+ CRLF Injection ( Adding Soon )
+ Local File Inclusion ( Adding Soon )
+ SubDomain TakeOver
+ Broken Link Hijacking ( Adding Soon )

### Recon ( information Gathering )
+ Subdomains ( Active & Passive )
+ Urls & Parameters ( Active & Passive )
+ Filtering Live Domains
+ ScreenShoting Live Domains
+ Open Ports With Nmap
+ Nikto Scan
+ Email Recon
+ Github Recon
+ Whois 
+ 
+ Finally Full Blind Scan With Nuclei


### Installation
```
git clone https://github.com/noor-sec/TheLionRecon
cd TheLionRecon
chmod 777 install.sh
./install.sh
chmod 777 lion.sh
```
### Run
```
./lion.sh target.com
```

### Tools Included
+ Assetfinder
+ SubFinder
+ Sublist3r
+ FinDomain
+ Amass
+ Go
+ Waybackurls
+ gau
+ gauplus
+ ParamSpider
+ qsreplace
+ Sqlmap




# Support
If You Love My Work. Please Support For OSWE
<a href="https://www.buymeacoffee.com/noornoor" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

