ip="$1"
scan="$2"
port="$3"
if [ -z "$ip" ]; then
        echo "Enter Ip Address And What You Want To Find"
        exit 1
fi
if [ -z "$scan" ]; then
        echo "enter scan type"
        exit 1
fi

if [ -n "$port" ]; then

	if [ "$scan" == "dir" ]; then
        	gobuster dir -u "$1":"$3" -w /usr/share/seclists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-big.txt -k
       		exit 0
	fi
	if [ "$scan" == "vhost" ]; then
        	echo "What are we doing"
       		exit 1
	fi
fi
if [ "$scan" == "vhost" ]; then
	gobuster vhost -u "$1" -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt --append-domain -k
	exit 0
fi
if [ "$scan" == "dir" ]; then
	gobuster dir -u "$1" -w /usr/share/seclists/Discovery/Web-Content/DirBuster-2007_directory-list-2.3-big.txt -k 
	exit 0
fi
