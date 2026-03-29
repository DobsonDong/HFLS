#!/bin/bash

# Netlify 自动部署脚本
# 运行此脚本会自动将网站部署到 Netlify

echo "=================================="
echo "开始部署到 Netlify"
echo "=================================="

# 1. 检查是否安装了 netlify-cli
if ! command -v netlify &> /dev/null; then
    echo "未安装 Netlify CLI，正在安装..."
    npm install -g netlify-cli
fi

# 2. 提交代码到 GitHub
echo "正在提交代码到 GitHub..."
git add .
git commit -m "Update website for Netlify deployment"
git push

# 3. 提示用户手动部署
echo ""
echo "=================================="
echo "部署说明"
echo "=================================="
echo ""
echo "请在浏览器中完成以下步骤："
echo ""
echo "1. 打开 Netlify: https://app.netlify.com/start"
echo ""
echo "2. 选择 GitHub（需要授权）"
echo ""
echo "3. 选择仓库: HFLS"
echo ""
echo "4. 构建设置："
echo "   - Build command: 留空"
echo "   - Publish directory: 留空（或输入 .）"
echo ""
echo "5. 点击 'Deploy Site'"
echo ""
echo "=================================="
echo "部署后，你的网站将在以下地址可用："
echo "https://hflsfund.netlify.app"
echo "=================================="
