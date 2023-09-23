#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

merge_feed helloworld "https://github.com/stupidloud/helloworld;tmp"
merge_package https://github.com/ilxp/luci-app-ikoolproxy
merge_package https://github.com/sundaqiang/openwrt-packages/trunk/luci-app-wolplus
merge_package https://github.com/messense/aliyundrive-webdav/trunk/openwrt/aliyundrive-webdav
merge_package https://github.com/messense/aliyundrive-webdav/trunk/openwrt/luci-app-aliyundrive-webdav
merge_package "-b 18.06 https://github.com/jerrykuku/luci-theme-argon"
merge_package https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
merge_package https://github.com/NateLol/luci-app-oled
merge_package https://github.com/xiaorouji/openwrt-passwall-packages/tree/main/brook
merge_package https://github.com/xiaorouji/openwrt-passwall-packages/tree/main/chinadns-ng
merge_package https://github.com/xiaorouji/openwrt-passwall-packages/tree/main/trojan-go
merge_package https://github.com/xiaorouji/openwrt-passwall-packages/tree/main/trojan-plus
merge_package https://github.com/xiaorouji/openwrt-passwall-packages/tree/main/sing-box
merge_package "-b main https://github.com/xiaorouji/openwrt-passwall"
merge_package https://github.com/jerrykuku/lua-maxminddb
merge_package https://github.com/jerrykuku/luci-app-vssr
merge_package https://github.com/kongfl888/luci-app-adguardhome
