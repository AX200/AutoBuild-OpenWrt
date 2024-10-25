#修改默认IP地址
sed -i 's/192.168.1.1/192.168.10.1/g' openwrt/package/base-files/files/bin/config_generate

#下载Adguardhome插件
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git openwrt/package/luci-app-adguardhome

#下载关机插件
#git clone https://github.com/esirplayground/luci-app-poweroff openwrt/package/luci-app-poweroff

#下载Argon主题
git clone https://github.com/jerrykuku/luci-theme-argon.git openwrt/package/lean/luci-theme-argon

#添加Passwall源到feeds文件
#sed -i '$a src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' openwrt/feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' openwrt/feeds.conf.default

#编译测试版内核
#sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' openwrt/target/linux/mediatek/Makefile
