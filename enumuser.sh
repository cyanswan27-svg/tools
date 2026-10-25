domain="$1"
ip="$2"
kerbrute userenum -d "$domain" --dc "$2" /usr/share/seclists/Usernames/xato-net-10-million-usernames.txt
