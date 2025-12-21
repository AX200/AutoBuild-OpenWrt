#修改默认IP地址
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/luci/bin/config_generate
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

#删除登录密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

#下载Argon主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

#编译测试版内核版本
#sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=6.6/g' target/linux/mediatek/Makefile