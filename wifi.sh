action="$1"
wifi="$2"
if [ "$action" == "list" ]; then
	nmcli device wifi list
	exit 1
fi
if [ -z "$action" ]; then
	echo "What action do you want"
	exit 1
fi
if [ -z "$wifi" ]; then
	echo "Please enter an action then a ssid"
	exit 1
fi
if [ "$action" == "delete" ]; then
	nmcli connection delete "$2"
	exit 1
fi
if [ "$action" == "connect" ]; then	
	nmcli device wifi connect "$2" --ask
 	exit 1
fi
