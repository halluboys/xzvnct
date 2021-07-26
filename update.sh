#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
echo "Start Update" | lolcat
# update
cd /usr/bin

wget -O update "https://raw.githubusercontent.com/halluboys/xzvnct/main/update.sh"
wget -O strt "https://raw.githubusercontent.com/halluboys/xzvnct/main/strt.sh"
wget -O swap "https://raw.githubusercontent.com/halluboys/xzvnct/main/swapkvm.sh"
wget -O v2raay "https://raw.githubusercontent.com/halluboys/xzvnct/main/v2raay.sh"
wget -o bbr "https://raw.githubusercontent.com/halluboys/xzvnct/main/bbr.sh"
wget -O l2tp "https://raw.githubusercontent.com/halluboys/xzvnct/main/l2tp.sh"
wget -O ssh "https://raw.githubusercontent.com/halluboys/xzvnct/main/ssh.sh"
wget -O ssssr "https://raw.githubusercontent.com/halluboys/xzvnct/main/ssssr.sh"
wget -O sstpp "https://raw.githubusercontent.com/halluboys/xzvnct/main/sstpp.sh"
wget -O trojaan "https://raw.githubusercontent.com/halluboys/xzvnct/main/trojaan.sh"
wget -O vleess "https://raw.githubusercontent.com/halluboys/xzvnct/main/vleess.sh"
wget -O wgr "https://raw.githubusercontent.com/halluboys/xzvnct/main/wgr.sh"
wget -O cfd "https://raw.githubusercontent.com/halluboys/xzvnct/main/cfd.sh"
wget -O cff "https://raw.githubusercontent.com/halluboys/xzvnct/main/cff.sh"
wget -O cfh "https://raw.githubusercontent.com/halluboys/xzvnct/main/cfh.sh"
wget -O menu "https://raw.githubusercontent.com/halluboys/xzvnct/main/menu.sh"


chmod +x bannerku
chmod +x cfd
chmod +x cfh
chmod +x cff

chmod +x update
chmod +x strt
chmod +x swap
chmod +x v2raay
chmod +x bbr
chmod +x trojaan
chmod +x sstpp
chmod +x vleess
chmod +x wgr
chmod +x ssssr
chmod +x ssh
chmod +x l2tp
chmod +x menu
echo "done" | lolcat
