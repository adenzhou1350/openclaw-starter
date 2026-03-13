#!/bin/bash
# 添加 Agent

if [ $# -eq 0 ]; then
    echo "用法: $0 <agent-name>"
    echo "示例: $0 code"
    exit 1
fi

AGENT=$1

echo "🤖 添加 Agent: $AGENT"

openclaw agents add $AGENT --non-interactive \
    --workspace ~/.openclaw/workspace/agents/$AGENT \
    --model minimax/MiniMax-M2.5-highspeed 2>&1 | tail -5

echo "✅ Agent $AGENT 已添加"
echo "运行 openclaw agents list 查看"
