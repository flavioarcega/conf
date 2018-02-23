#!/usr/bin/env sh

sudo apt install g++ python3-venv -y
python3 -m venv ssb
cd ssb
source bin/activate
curl http://nodejs.org/dist/node-latest.tar.gz | tar xvz
cd node-v*
./configure --prefix=$VIRTUAL_ENV
make install
npm install -g scuttlebot
npm install -g git-ssb
npm install -g ssb-patchwork
