# Agent 模板

使用模板快速添加 Agent：

```bash
# 添加 Code Agent
bash scripts/add-agent.sh code

# 手动
openclaw agents add code \
  --workspace ~/.openclaw/workspace/agents/code \
  --model minimax/MiniMax-M2.5-highspeed
```

## 预设模板

| Agent | 用途 | 技能 |
|-------|------|------|
| code | 工程师 | code-review, git |
| research | 调研员 | tavily, research |
| content | 内容创作 | xhs, 小红书 |
