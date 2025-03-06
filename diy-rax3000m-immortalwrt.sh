#修改默认IP地址
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#下载Argon主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon