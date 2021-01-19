#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

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
#svn co https://github.com/echoops/Packages/trunk/luci-app-turboacc package/community/luci-app-turboacc
#

# 个性化配置修改
#
# > Mod
sed -i '$i '"sed -i '/luciname/d' /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
sed -i '$i '"echo 'luciname = \"Limitless\"' >> /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
sed -i '$i '"sed -i '/luciversion/d' /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
sed -i '$i '"echo 'luciversion = \"Mod\"' >> /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
#
# > 修改插件位置
sed -i 's/\"services\"/\"network\"/g' feeds/luci/applications/luci-app-upnp/luasrc/controller/upnp.lua
sed -i 's/\"nas\"/\"services\"/g' package/lean/luci-app-nfs/luasrc/controller/nfs.lua
#
# > 修改插件名字
sed -i 's/\"解锁网易云灰色歌曲\"/\"网易云音乐解锁\"/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
sed -i 's/\"UU游戏加速器\"/\"网易游戏加速器\"/g' package/lean/luci-app-uugamebooster/po/zh-cn/uuplugin.po
sed -i 's/\"带宽监控\"/\"监视\"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/\"TTYD 终端\"/\"网页终端\"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/\"动态 DNS\"/\"动态域名解析\"/g' feeds/luci/applications/luci-app-ddns/po/zh-cn/ddns.po
sed -i 's/\"KMS 服务器\"/\"KMS 激活服务\"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
sed -i 's/\"网络共享\"/\"SMB 文件共享\"/g' package/lean/luci-app-samba4/po/zh-cn/samba4.po
sed -i 's/\"NFS 管理\"/\"NFS 文件共享\"/g' package/lean/luci-app-nfs/po/zh-cn/nfs.po
sed -i 's/\"IP\/MAC绑定\"/\"静态 ARP\"/g' package/lean/luci-app-arpbind/po/zh-cn/arpbind.po
sed -i 's/\"UPnP\"/\"端口转发\"/g' feeds/luci/applications/luci-app-upnp/po/zh-cn/upnp.po
sed -i 's/\"Turbo ACC 网络加速\"/\"网络加速\"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
#
