#!/bin/bash

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git 5g_modem_support https://github.com/Siriling/5G-Modem-Support' >>feeds.conf.default

# Modify default IP
# sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
