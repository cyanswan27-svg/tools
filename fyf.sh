file="$1"
if [ -z "$file" ];then
	echo "you want to crash the computer you dumb ass"
	exit 1
fi 
find / -name "*.$1*" 2>/dev/null

