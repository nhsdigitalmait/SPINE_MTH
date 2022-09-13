#!/bin/bash
#
#
cd $TKWROOT/config/SPINE_MTH

SECURE=n
X=y

TKW="java -jar ../../TKW.jar -simulator"
TKWX="java -jar ../../TKW-x.jar -httpinterceptor"

if [[ "$SECURE" == "y" ]]
then
	if [[ "$X" == "n" ]]
	then
		$TKW tkw_mth_server_ssl.properties
	else
		$TKWX tkw-x_mth_server_ssl.properties
	fi
else
	if [[ "$X" == "n" ]]
	then
		$TKW tkw.properties
	else
		$TKWX tkw-x.properties
	fi
fi

#read -n 1 -p "Press any key to continue..."
