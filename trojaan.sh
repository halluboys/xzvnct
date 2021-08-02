#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
clear
echo -e "\e[32m════════════════════════════════════════\e[m" | lolcat
echo -e "             ═══[Trojan]═══"
echo -e "\e[32m════════════════════════════════════════\e[m" | lolcat
echo -e " 1)  Create Trojan Account"
echo -e " 2)  Create TrojanGo Account"
echo -e " 3)  Deleting Trojan Account"
echo -e " 4)  Deleting TrojanGo Account"
echo -e " 5)  Renew Trojan Account"
echo -e " 6)  Renew TrojanGo Account"
echo -e " 7)  Check User Login Trojan"
echo -e " 8)  Check User Login TrojanGo"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-4 or x] :  "  trojan
echo -e ""
case $trojan in
1)
add-tr
;;
2)
go-trgo
;;
3)
del-tr
;;
4)
del-trgo
;;
5)
renew-tr
;;
6)
renew-trgo
;;
7)
cek-tr
;;
8)
cek-trgo
;; 
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
