# > 修改插件位置
sed -i 's/\"services\"/\"network\"/g' feeds/luci/applications/luci-app-upnp/luasrc/controller/upnp.lua
sed -i '/\"VPN\"/d' package/lean/luci-app-softethervpn/luasrc/controller/softethervpn.lua
sed -i 's/\"vpn\"/\"services\"/g' package/lean/luci-app-softethervpn/luasrc/controller/softethervpn.lua
sed -i '/hd\_idle\.lua/d' package/lean/default-settings/files/zzz-default-settings
sed -i '/samba\.lua/d' package/lean/default-settings/files/zzz-default-settings
#
# > 修改插件名字
sed -i 's/\"Argon 主题设置\"/\"主题设置\"/g' package/community/luci-app-argon-config/po/zh-cn/argon-config.po
sed -i 's/\"TTYD 终端\"/\"网页终端\"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/\"解锁网易云灰色歌曲\"/\"网易云音乐解锁\"/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
sed -i 's/\"SoftEther VPN 服务器\"/\"SoftEther VPN\"/g' package/lean/luci-app-softethervpn/po/zh-cn/softethervpn.po
sed -i 's/\"动态 DNS\"/\"动态域名解析\"/g' feeds/luci/applications/luci-app-ddns/po/zh-cn/ddns.po
sed -i 's/\"Nps 内网穿透\"/\"NPS 内网穿透\"/g' package/lean/luci-app-nps/po/zh-cn/nps.po
sed -i 's/\"KMS 服务器\"/\"KMS 激活服务\"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
sed -i 's/\"网络共享\"/\"SMB 文件共享\"/g' feeds/luci/applications/luci-app-samba/po/zh-cn/samba.po
sed -i 's/\"硬盘休眠\"/\"硬盘休眠助手\"/g' feeds/luci/applications/luci-app-hd-idle/po/zh-cn/hd_idle.po
sed -i 's/\"IP\/MAC绑定\"/\"静态ARP\"/g' package/lean/luci-app-arpbind/po/zh-cn/arpbind.po
sed -i 's/\"Turbo ACC 网络加速\"/\"网络加速\"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
sed -i 's/\"带宽监控\"/\"监视\"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
#
