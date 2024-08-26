#!/bin/bash

# 检查是否提供了项目名称参数
if [ -z "$1" ]; then
  echo "请提供 Hugging Face 项目名称作为参数。"
  echo "用法: ./download.sh 项目名称"
  echo "例如: ./download.sh XLabs-AI/flux-controlnet-hed-v3"
  exit 1
fi

# 设置项目名称
PROJECT_NAME=$1

# 执行 huggingface-cli download 命令
huggingface-cli download $PROJECT_NAME --revision main --local-dir ./download/$PROJECT_NAME

echo "下载完成: $PROJECT_NAME"
