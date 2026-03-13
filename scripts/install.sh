#!/bin/bash
# OpenClaw 一键安装脚本

set -e

echo "🎯 OpenClaw 安装"
echo "=============="
echo ""

# 检查 OpenClaw
if ! command -v openclaw &> /dev/null; then
    echo "❌ 请先安装 OpenClaw: npm install -g openclaw"
    exit 1
fi

echo "✅ OpenClaw 已安装"

# 复制预设
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$HOME/.openclaw/workspace"

echo "📦 安装预设..."
mkdir -p "$TARGET_DIR/presets"
cp -r "$SOURCE_DIR/presets"/* "$TARGET_DIR/presets/"

echo "✅ 预设安装完成"
echo ""
echo "下一步：选择人格"
echo "  ls presets/archetype/"
echo "  cp presets/archetype/xxx/SOUL.md ~/.openclaw/workspace/"
