file="$1"
if [ -z "$file" ]; then
	echo "holy nazi logic"
	exit 1
fi
find /home/cyanswan27 -name "*$1*" -type f -delete 2>/dev/null
echo "file massacre"

