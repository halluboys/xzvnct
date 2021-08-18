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
echo -e   "   1\e[1;33m)\e[m SSH & OpenVPN Menu" | lolcat
echo -e   "   2\e[1;33m)\e[m Panel Wireguard " | lolcat
echo -e   "   3\e[1;33m)\e[m Panel L2TP & PPTP Account" | lolcat
echo -e   "   4\e[1;33m)\e[m Panel SSTP  Account" | lolcat
echo -e   "   5\e[1;33m)\e[m Panel SSR & SS Account" | lolcat
echo -e   "   6\e[1;33m)\e[m Panel V2Ray" | lolcat
echo -e   "   7\e[1;33m)\e[m Panel VLess" | lolcat
echo -e   "   8\e[1;33m)\e[m Panel TRojan" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "                             SYSTEM MENU\e[m" | lolcat 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   9\e[1;33m)\e[m   Add Subdomain Host For VPS" | lolcat
echo -e   "   10\e[1;33m)\e[m  Renew Certificate V2RAY" | lolcat
echo -e   "   11\e[1;33m)\e[m  Change Port All Account" | lolcat
echo -e   "   12\e[1;33m)\e[m  Autobackup Data VPS" | lolcat
echo -e   "   13\e[1;33m)\e[m  Backup Data VPS" | lolcat
echo -e   "   14\e[1;33m)\e[m  Restore Data VPS" | lolcat
echo -e   "   15\e[1;33m)\e[m  Webmin Menu" | lolcat
echo -e   "   16\e[1;33m)\e[m  Limit Bandwith Speed Server" | lolcat
echo -e   "   17\e[1;33m)\e[m  Check Usage of VPS Ram"  | lolcat
echo -e   "   18\e[1;33m)\e[m  Reboot VPS" | lolcat
echo -e   "   19\e[1;33m)\e[m  Speedtest VPS" | lolcat
echo -e   "   20\e[1;33m)\e[m  Information Display System" | lolcat
echo -e   "   21\e[1;33m)\e[m  Info Script Auto Install" | lolcat
echo -e   "   22\e[1;33m)\e[m  Install BBR" | lolcat
echo -e   "   23\e[1;33m)\e[m  Add ID Cloudflare" | lolcat
echo -e   "   24\e[1;33m)\e[m  Cloudflare Add-Ons" | lolcat
echo -e   "   25\e[1;33m)\e[m  Pointing BUG" | lolcat
echo -e   "   26\e[1;33m)\e[m  Clear log" | lolcat
echo -e   "   27\e[1;33m)\e[m  Auto Reboot" | lolcat
echo -e   "   28\e[1;33m)\e[m  Update Lates Script" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   x)   Exit" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-28 or x] :  " menu | lolcat
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
add-host
;;
10)
certv2ray
;;
11)
change-port
;;
12)
autobackup
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
update
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac
