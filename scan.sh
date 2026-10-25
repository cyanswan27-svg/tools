ip="$1"
scan="$2"

if [ -z "$ip" ]; then
	echo "Give an ip address"
	exit 1
fi

if [ -z "$scan" ]; then
	
	sudo nmap -sV -vv "$1"
	exit 0
fi
if [ "$scan" == "xmas" ]; then
	
	sudo nmap -sV -sX -vv -Pn "$1"
	exit 0
fi
if [ "$scan" == "normal" ]; then
	
	sudo nmap -sV -vv -Pn "$1"
	exit 0
fi
if [ "$scan" == "vulnerable" ]; then
	
	sudo nmap -sV -vv --script=vuln "$1"
	exit 0
fi
if [ "$scan" == "all" ]; then
	
	sudo nmap -sV -vv -p- -Pn "$1"
	exit 0
fi
if [ "$scan" == "ping" ]; then
	sudo nmap -sn "$1"
	exit 0
fi
