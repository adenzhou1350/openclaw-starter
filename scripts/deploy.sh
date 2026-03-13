#!/bin/bash
# 一键部署脚本

set -e

echo "🚀 OpenClaw 一键部署"
echo "===================="
echo ""

# 1. 安装预设
echo "1/4 安装预设..."
[ -d "presets" ] && mkdir -p ~/.openclaw/workspace/presets && cp -r presets/* ~/.openclaw/workspace/presets/

# 2. 安装技能
echo "2/4 安装技能..."
[ -d "skills" ] && mkdir -p ~/.openclaw/workspace/skills && cp -r skills/* ~/.openclaw/workspace/skills/

# 3. 复制配置
echo "3/4 复制配置..."
[ -d "configs" ] && cp -r configs/* ~/.openclaw/workspace/ 2>/dev/null || true

# 4. 配置 cron
echo "4/4 配置定时任务..."
if [ -f "configs/cron.yaml" ]; then
  echo "定时任务配置已就绪，请手动配置 crontab"
fi

echo ""
echo "✅ 部署完成！"
echo ""
echo "下一步："
echo "  1. 选择人格: cp presets/archetype/xxx/SOUL.md ~/.openclaw/workspace/"
echo "  2. 启动: openclaw gateway start"
