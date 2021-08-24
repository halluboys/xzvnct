#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
cat /usr/bin/bannerku | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
IPVPS=$(curl -s ipinfo.io/ip )
	echo -e "   \e[032;1mIsp Name:\e[0m $ISP" | lolcat
	echo -e "   \e[032;1mCity:\e[0m $CITY" | lolcat
	echo -e "   \e[033;1mIPVPS:\e[0m $IPVPS" | lolcat
echo -e  ""
echo -e  "   -------------------------MENU OPTIONS------------------------" | lolcat
echo -e   "   1\e[1;33m)\e[m SSH & OpenVPN Menu" 
echo -e   "   2\e[1;33m)\e[m Panel Wireguard " 
echo -e   "   3\e[1;33m)\e[m Panel L2TP & PPTP Account" 
echo -e   "   4\e[1;33m)\e[m Panel SSTP  Account" 
echo -e   "   5\e[1;33m)\e[m Panel SSR & SS Account" 
echo -e   "   6\e[1;33m)\e[m Panel V2Ray" 
echo -e   "   7\e[1;33m)\e[m Panel VLess" 
echo -e   "   8\e[1;33m)\e[m Panel Trojan" 
echo -e   "   9\e[1;33m)\e[m Panel TrojanGO"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "                             SYSTEM MENU\e[m" | lolcat 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   10\e[1;33m)\e[m   Add Subdomain Host For VPS" 
echo -e   "   11\e[1;33m)\e[m  Renew Certificate V2RAY" 
echo -e   "   12\e[1;33m)\e[m  Change Port All Account"
echo -e   "   13\e[1;33m)\e[m  Backup Data VPS" 
echo -e   "   14\e[1;33m)\e[m  Restore Data VPS" 
echo -e   "   15\e[1;33m)\e[m  Webmin Menu" 
echo -e   "   16\e[1;33m)\e[m  Limit Bandwith Speed Server" 
echo -e   "   17\e[1;33m)\e[m  Check Usage of VPS Ram"  
echo -e   "   18\e[1;33m)\e[m  Reboot VPS" 
echo -e   "   19\e[1;33m)\e[m  Speedtest VPS" 
echo -e   "   20\e[1;33m)\e[m  Information Display System" 
echo -e   "   21\e[1;33m)\e[m  Info Script Auto Install" 
echo -e   "   22\e[1;33m)\e[m  Install BBR" 
echo -e   "   23\e[1;33m)\e[m  Add ID Cloudflare"
echo -e   "   24\e[1;33m)\e[m  Cloudflare Add-Ons" 
echo -e   "   25\e[1;33m)\e[m  Pointing BUG" 
echo -e   "   26\e[1;33m)\e[m  Clear log" 
echo -e   "   27\e[1;33m)\e[m  Auto Reboot" 
echo -e   "   28\e[1;33m)\e[m  Check Service Running"
echo -e   "   29\e[1;33m)\e[m  Update Lates Script"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   x)   Exit" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-29 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
sstpp
;;
5)
ssssr
;;
6)
v2raay
;;
7)
vleess
;;
8)
trojaan
;;
9)
trojanGO
;;
10)
add-host
;;
11)
cerv2ray
;;
12)
change-port
;;
13)
backup
;;
14)
restore
;;
15)
wbmn
;;
16)
limit-speed
;;
17)
ram
;;
18)
reboot
;;
19)
speedtest
;;
20)
info
;;
21)
about
;;
22)
bbr
;;
23)
cff
;;
24)
cfd
;;
25)
cfh
;;
26)
clear-log
;;
27)
autoreboot
;;
28)
running
;;
29)
update
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac
