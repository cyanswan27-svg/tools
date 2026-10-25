username="$1"
password="$2"
ip="$3"
scan="$4"
if [ -z "$scan" ]; then
	PYTHONPATH=/usr/lib/python3.14/site-packages python3 /home/cyanswan27/.local/bin/certipy find -u "$username" -p "$password" -dc-ip "$ip" 
	exit 1
elif [ "$scan" == "vulnerable" ]; then
	PYTHONPATH=/usr/lib/python3.14/site-packages python3 /home/cyanswan27/.local/bin/certipy find -u "$username" -p "$password" -dc-ip "$ip" -vulnerable
	exit 1
elif [ "$scan" == "stdout" ]; then
	PYTHONPATH=/usr/lib/python3.14/site-packages python3 /home/cyanswan27/.local/bin/certipy find -u "$username" -p "$password" -dc-ip "$ip" -stdout
	exit 1
elif [ "$scan" == "bloodhound" ]; then
	PYTHONPATH=/usr/lib/python3.14/site-packages python3 /home/cyanswan27/.local/bin/certipy find -u "$username" -p "$password" -dc-ip "$ip" -bloodhound
	exit 1
else
	echo "what are you doing"
	exit 1
fi
	
