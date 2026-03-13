#!/bin/bash
# OpenClaw 交互式配置向导

echo "🎯 OpenClaw 配置向导"
echo "===================="
echo ""
echo "1) 技术助手 (tech-lead)"
echo "2) 项目经理 (coordinator)"  
echo "3) 销售精英 (sales-wolf)"
echo "4) 研究学者 (scholar)"
echo "5) 轻松助手 (casual)"
echo ""

read -p "选择你的人格 (1-5): " choice

case $choice in
  1) TYPE="tech-lead";;
  2) TYPE="coordinator";;
  3) TYPE="sales-wolf";;
  4) TYPE="scholar";;
  5) TYPE="casual";;
  *) TYPE="coordinator";;
esac

echo ""
echo "正在配置 $TYPE 人格..."

# 复制人格文件
cp presets/archetype/$TYPE/SOUL.md ~/.openclaw/workspace/SOUL.md 2>/dev/null || echo "请先运行 install.sh"

echo "✅ 配置完成！"
echo "人格文件已复制到 ~/.openclaw/workspace/SOUL.md"
