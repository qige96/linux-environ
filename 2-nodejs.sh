# !/bin/bash
cd ~/softwares

# set up nodejs environ
wget https://nodejs.org/dist/v16.14.2/node-v16.14.2-linux-x64.tar.xz
tar -xf node-v16.14.2-linux-x64.tar.xz
mv node-v16.14.2-linux-x64 nodejs

sed -i '$a export PATH=$SWS/nodejs/bin:$PATH' ~/.bashrc
source ~/.bashrc
~/softwares/nodejs/bin/npm i -g yarn
~/softwares/nodejs/bin/npm i -g npm
~/softwares/nodejs/bin/npm i -g typescript
