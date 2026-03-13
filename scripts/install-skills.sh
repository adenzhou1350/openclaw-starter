#!/bin/bash
# 安装技能

SKILLS=(
  "code-review:代码审查"
  "git-workflow:Git工作流"
  "database-manager:数据库管理"
  "tavily-search:AI搜索"
  "xhs-browser-ops:小红书运营"
)

echo "📦 可用技能："
i=1
for skill in "${SKILLS[@]}"; do
  name="${skill%%:*}"
  desc="${skill##*:}"
  echo "  $i) $name - $desc"
  ((i++))
done

echo ""
read -p "选择技能编号: " choice

if [ -d "skills/$name" ]; then
  cp -r skills/$name ~/.openclaw/workspace/skills/
  echo "✅ $name 已安装"
else
  echo "❌ 技能不存在"
fi
