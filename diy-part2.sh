#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.8.5/g' package/base-files/files/bin/config_generate
# add app
git clone https://github.com/weweyes/OpenClash.git package/luci-app-openclash
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/littletao08/luci-app-eqos.git package/luci-app-eqos
git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf
git clone https://github.com/fw876/helloworld.git package/luci-app-ssr-plus

#git clone https://github.com/weweyes/luci-app-passwall.git package/lean/luci-app-passwall
#git clone https://github.com/weweyes/small.git package/lean/small

svn co https://github.com/weweyes/openwrt-packages/trunk/luci-theme-opentomato package/lean/luci-theme-opentomato
svn co https://github.com/weweyes/openwrt-packages/trunk/luci-theme-opentomcat package/lean/luci-theme-opentomcat
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/lean/luci-app-smartdns
