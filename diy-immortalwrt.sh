#修改默认IP地址
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

#修改防火墙配置
sed -i "1i\uci set firewall.@zone[1].input='ACCEPT'" package/emortal/default-settings/files/99-default-settings-chinese
sed -i '2i\uci commit network' package/emortal/default-settings/files/99-default-settings-chinese

#删除登录密码
#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

#下载Adguardhome插件
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

#下载关机插件
#git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff

#下载Argon主题
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

#添加Passwall源到feeds文件
sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default

#修改luci版本
#sed -i '/^#src-git luci https:\/\/github.com\/coolsnowwolf\/luci$/s/^#//' feeds.conf.default
#sed -i '/^src-git luci https:\/\/github.com\/coolsnowwolf\/luci\.git;openwrt-23\.05$/s/^/#/' feeds.conf.default

#编译测试版内核
#sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=6.6/g' target/linux/x86/Makefile
