sudo apt-get -y update

sudo apt-get -y install git make curl unzip gedit automake autoconf dh-autoreconf build-essential pkg-config openssh-server screen libtool libcurl4-openssl-dev libncurses5-dev libudev-dev

sudo apt-get -y install php5-curl

git clone https://github.com/lucasjones/cpuminer-multi.git xmr

cd xmr

wget raw.github.com/rallat/quarkcoin-cpuminer/4e6c263c837bd04261df1ba7383ea828409ff498/acinclude.m4

chmod +x autogen.sh

./autogen.sh

sudo ./configure CFLAGS="-O3"

sudo make clean

sudo make

sudo make install

./minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u ichbin.meric@gmail.com -p x -t 1
