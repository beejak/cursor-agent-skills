# Ecosystem and related repos

Agent skills are part of a broader ecosystem. This page links to the most starred and useful repos so you can go deeper or reuse skills across tools.

---

## Spec and documentation

| Repo | Stars | What it is |
|------|-------|------------|
| [agentskills/agentskills](https://github.com/agentskills/agentskills) | ~9.2k | **Official Agent Skills spec** (Anthropic). Open format for giving agents new capabilities: folders of instructions, scripts, and resources. Docs at [agentskills.io](https://agentskills.io). Same idea as Cursor skills (SKILL.md, progressive disclosure); Cursor implements its own loading from `~/.cursor/skills/` and `.cursor/skills/`. |

---

## Curated lists and guides

| Repo | Stars | What it is |
|------|-------|------------|
| [skillmatic-ai/awesome-agent-skills](https://github.com/skillmatic-ai/awesome-agent-skills) | ~136 | **Curated “awesome” list**: what skills are, platforms that support them (Cursor, Claude, Codex, VS Code, Copilot, etc.), official and community skill catalogs, how to build skills, FAQs, videos, and tools. Start here to explore the ecosystem. |

---

## Official skill catalogs

These are official or first-party skill collections. Many skills are portable (SKILL.md + scripts) and can inspire or adapt for Cursor.

| Repo | What it is |
|------|------------|
| [anthropics/skills](https://github.com/anthropics/skills) | Anthropic’s example skills catalog (Claude). |
| [openai/skills](https://github.com/openai/skills) | OpenAI’s skills catalog (Codex). |
| [microsoft/skills](https://github.com/microsoft/skills) | Microsoft skills for AI coding agents (Azure, AI Foundry). |

---

## Community skill collections

| Repo | Stars | What it is |
|------|-------|------------|
| [jdrhyne/agent-skills](https://github.com/jdrhyne/agent-skills) | ~167 | **Cross-platform skill collection**: JIRA, GA4, Google Ads, GSC, Remotion, planner, task-orchestrator, sysadmin-toolbox, and many more. Works with OpenClaw, Claude Code, Codex, and **Cursor**. Structure: `skills/`, `prompts/`, platform-specific folders. Many skills are universal (SKILL.md + scripts). |

Other catalogs (Vercel, Supabase, Hugging Face, etc.) are listed in [awesome-agent-skills](https://github.com/skillmatic-ai/awesome-agent-skills#ready-to-use-skill-libraries).

---

## How this fits with our tutorial

- **This repo** ([beejak/cursor-agent-skills](https://github.com/beejak/cursor-agent-skills)) is a **Cursor-focused tutorial**: how to write and place skills for Cursor, with copy-paste examples (commit messages, code review, repo standards).
- **agentskills/agentskills** defines the **open format**; Cursor’s skills follow the same spirit (SKILL.md, name, description, instructions).
- **awesome-agent-skills** is the best **overview** of the whole ecosystem (platforms, catalogs, guides).
- **jdrhyne/agent-skills** and the **official catalogs** are places to **reuse or adapt** skills; copy a `SKILL.md` (and any scripts) into `~/.cursor/skills/<name>/` or your repo’s `.cursor/skills/<name>/` and adjust descriptions/paths for Cursor.

---

## Quick links

- [Agent Skills spec & docs](https://agentskills.io)  
- [Cursor skills docs](https://cursor.com/docs/context/skills)  
- [Awesome Agent Skills](https://github.com/skillmatic-ai/awesome-agent-skills)  
- [This tutorial (README)](../README.md)
