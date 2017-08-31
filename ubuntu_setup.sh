echo "You must run this script as root (or otherwise elevated priviliges [eg sudo])"
echo "ExecStart=/usr/bin/docker daemon -H fd:// -D -H tcp://127.0.0.1:2375" >> /lib/systemd/system/docker.service
ufw allow 81
systemctl daemon-reload
service docker restart
sleep 15
docker pull wbarshop/milkyway_shiny
