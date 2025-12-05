#!/bin/bash
# 离线安装 LibreOffice/OpenOffice RPM 包
# 将 rpm 包放在与本脚本同级目录后运行： sh install-office.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
RPM_DIR="${SCRIPT_DIR}"

shopt -s nullglob
RPM_FILES=("${RPM_DIR}"/*.rpm)
shopt -u nullglob

if [ ${#RPM_FILES[@]} -eq 0 ]; then
  echo "未找到 RPM 包，请把 LibreOffice/OpenOffice 的 rpm 包放到 ${RPM_DIR} 后重试"
  exit 1
fi

echo "检测到 ${#RPM_FILES[@]} 个 RPM 包，开始安装..."
for rpm in "${RPM_FILES[@]}"; do
  echo "安装: ${rpm}"
  rpm -Uvh --nodeps "${rpm}"
done

echo "安装完成。若需要指定 office.home，请在 config/application.properties 中配置 office.home 路径。"

