#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
echo 'src-git 5g_modem_support https://github.com/Siriling/5G-Modem-Support' >>feeds.conf.default
./scripts/feeds update 5g_modem_support
./scripts/feeds install luci-app-modem
sed -i '/src-git 5g_modem_support https:\/\/github.com\/Siriling\/5G-Modem-Support/d;/^$/d' feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default