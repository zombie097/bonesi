#/bin/sh

read -p "Enter ip: " ip
sudo apt install libpcap0.8-dev -y
sudo apt install automake-1.15 -y
sudo apt install libnet1-dev -y
./configure
make
sudo make ./install
sudo bonesi $ip":88"
