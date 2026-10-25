iso="$1"
usb="$2"
if [[ "$usb" == *nvme0n1* ]]; then
    echo "GTFO"
    exit 1
fi
if [[ "$usb" == */dev* ]]; then
    echo "GTFO"
    exit 1
fi
if [ -z "$usb" ]; then
    echo "GTFO"
    exit 1
fi 
sudo dd bs=4M if="$iso" of=/dev/"$usb" status=progress oflag=sync
