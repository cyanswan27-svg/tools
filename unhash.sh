file="$1"
if [[ "$file" != *.hash ]]; then
	hash_file="${file%.*}.hash"
	cp "$file" "$hash_file" 2>/dev/null
else
	hash_file="$file"
fi

john --wordlist=~/Tools/rockyou.txt $hash_file
echo "-----------------------automated-----------------------"
john --show $hash_file 
