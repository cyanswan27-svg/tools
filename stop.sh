sudo airmon-ng stop wlp0s20f3mon
sudo systemctl restart NetworkManager
find / -name "*capture.cap*" -delete 2>/dev/null

