#修改默认IP地址
sed -i 's/192.168.1.1/192.168.2.1/g' openwrt/package/base-files/files/bin/config_generate

#下载Adguardhome插件
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git openwrt/package/luci-app-adguardhome

#下载关机插件
git clone https://github.com/esirplayground/luci-app-poweroff openwrt/package/luci-app-poweroff

#下载Smartdns插件
#git clone https://github.com/pymumu/openwrt-smartdns openwrt/package/smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git openwrt/package/luci-app-smartdns

#下载Argon主题
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git openwrt/package/lean/luci-theme-argon

#添加Passwall源到feeds文件
sed -i '$a src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages' openwrt/feeds.conf.default
sed -i '$a src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci' openwrt/feeds.conf.default

#添加SSR+源到feeds文件
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' openwrt/feeds.conf.default

#添加kenzok8源到feeds文件
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' openwrt/feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' openwrt/feeds.conf.default