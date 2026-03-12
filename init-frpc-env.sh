#!/bin/bash

# 下载 frpc-env.zip 文件
echo "正在下载 frpc-env.zip..."
wget https://raw.githubusercontent.com/sysuggec/my-tools/main/frpc-env.zip

# 检查下载是否成功
if [ ! -f "frpc-env.zip" ]; then
    echo "错误: 下载失败"
    exit 1
fi

echo "下载成功"

# 解压文件（需要输入密码）
echo "正在解压 frpc-env.zip (需要输入密码)..."
unzip frpc-env.zip

# 检查解压是否成功
if [ ! -d ".cloudstudio-backup" ]; then
    echo "错误: 解压失败"
    exit 1
fi

echo "解压成功"

# 进入 .cloudstudio-backup 目录
cd .cloudstudio-backup

# 执行 restore.sh 脚本
echo "正在执行 restore.sh..."
bash restore.sh

echo "操作完成"
