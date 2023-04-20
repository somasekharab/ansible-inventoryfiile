#!/bin/bash
To="gowdassekhar2003@gmail.com"
ram_free=$(free -mt | grep total: | awk '{print $4}')

if [ $ram_free -le 700]
then
   echo "sending email become your ram free size is lessthan 700"
   echo "subject:warning.ram free size is low " | send mail $To
fi
