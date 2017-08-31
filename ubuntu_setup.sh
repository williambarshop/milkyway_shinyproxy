echo "Please make sure to run this script as root (or otherwise elevated priviliges [eg sudo])!\nIf you already are- great. That'll help."
sed -i 's#^ExecStart=.*$#ExecStart=/usr/bin/dockerd -H fd:// -D -H tcp://127.0.0.1:2375#g' /lib/systemd/system/docker.service
ufw allow 81
systemctl daemon-reload
service docker restart
sleep 15
docker pull wbarshop/milkyway_shiny
echo "We're all done setting up docker to work with ShinyProxy... Be careful not to open external access to port 2375!"
