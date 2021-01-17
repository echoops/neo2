#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 配置自定义主题
#
# > 清除旧版argon主题并拉取最新版
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/community/luci-theme-argon
#
# > 修改默认主题为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
#

# 集成自定义插件
#
# > AdguardHome
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/community/luci-app-adguardhome
#
# > Dockerman
git clone https://github.com/lisaac/luci-lib-docker package/community/luci-lib-docker
git clone https://github.com/lisaac/luci-app-dockerman package/community/luci-app-dockerman
#
# > HelloWorld (vssr)
git clone https://github.com/jerrykuku/lua-maxminddb package/community/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/community/luci-app-vssr
#
# > TurboACC
svn co https://github.com/echoops/Packages/trunk/luci-app-turboacc package/community/luci-app-turboacc
#

# 个性化配置修改
#
# > 版本显示信息
#sed -i "s/# REVISION:=x/REVISION:=Mod by echoops/g" include/version.mk
#
# > 修改插件名字
sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/"Web 管理"/"Web"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
sed -i 's/"带宽监控"/"监视"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/"实时流量监测"/"流量"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/community/luci-app-turboacc/po/zh-cn/turboacc.po
sed -i 's/"KMS 服务器"/"系统激活服务器"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
sed -i 's/"TTYD 终端"/"命令窗"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/"USB 打印服务器"/"打印服务"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
sed -i 's/"解锁网易云灰色歌曲"/"网易云音乐解锁"/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
#
