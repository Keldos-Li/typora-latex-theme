#! /bin/sh
# this file will be copied into target directory

base_dir=`dirname $0`

if [ `uname` = "Linux" ]
then
    dir="$HOME/.config/Typora/themes"
elif [ `uname` = "Darwin" ]
then
    dir="$HOME/Library/Application Support/abnerworks.Typora/themes"
else
    echo "暂不支持当前操作系统 `uname`"
    exit 1
fi

echo "正在寻找 Typora 主题文件夹 $dir"
if [ -d "$dir" ]
then
    echo "已找到该文件夹"
else
    echo "未找到该文件夹，请先安装 Typora"
    exit 2
fi

cp -f $base_dir/target/*.css "$dir"
if [ $? -eq 0 ]
then
    echo "安装成功"
    exit 0
else
    echo "安装失败"
    exit 3
fi
