# OpenClaw Starter 🎯

> 一键配置你的专属 AI 助手

让每个人都能快速搭建自己的 AI 助手。

## ✨ 功能

- 🎭 **人格预设** - 多种性格，一键生成
- ⚡ **技能市场** - 开发、搜索、内容创作
- 🤖 **多 Agent** - 专业分工，协同工作
- ⏰ **定时任务** - 自动执行，解放双手

## 🚀 快速开始

```bash
# 1. 克隆项目
git clone https://github.com/adenzhou1350/openclaw-starter.git
cd openclaw-starter

# 2. 一键部署
bash scripts/deploy.sh

# 3. 选择人格
bash scripts/setup.sh

# 4. 启动
openclaw gateway start
```

## 📦 模块

### 人格 (presets/)

| 类型 | 数量 |
|------|------|
| archetype | 4种 |
| mbti | 16种 |
| anime | 3种 |

### 脚本 (scripts/)

| 脚本 | 功能 |
|------|------|
| deploy.sh | 一键部署 |
| setup.sh | 交互式配置人格 |
| add-agent.sh | 添加 Agent |
| install-skills.sh | 安装技能 |

### 配置 (configs/)

| 文件 | 说明 |
|------|------|
| cron.yaml | 定时任务配置 |

## 使用示例

### 示例 1：技术助手

```bash
cp presets/archetype/tech-lead/SOUL.md ~/.openclaw/workspace/
```

### 示例 2：添加 Code Agent

```bash
bash scripts/add-agent.sh code
```

### 示例 3：安装技能

```bash
bash scripts/install-skills.sh
```

## 📁 项目结构

```
openclaw-starter/
├── presets/           # 人格预设
│   ├── archetype/   # 角色原型
│   ├── mbti/      # MBTI
│   └── anime/       # 动漫
├── scripts/         # 安装脚本
│   ├── deploy.sh    # 一键部署
│   ├── setup.sh    # 配置人格
│   └── add-agent.sh # 添加 Agent
├── configs/         # 配置文件
│   └── cron.yaml   # 定时任务
└── README.md
```

## 🤝 相关项目

- [soul-generator](./soul-generator) - 人格生成器
- [openclaw-automation](./openclaw-automation) - 自动化工具

---

MIT License
