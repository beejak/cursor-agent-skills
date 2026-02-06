# Cursor Agent Skills Tutorial

Learn how to create **agent skills** in Cursor—markdown instructions that teach the AI how to do specific tasks (commit messages, code review, repo conventions) and apply them automatically when relevant.

**Prerequisites:** [Cursor](https://cursor.com) installed. No extra tools required—skills are markdown files.

---

## Table of contents

- [What are agent skills?](#what-are-agent-skills)
- [Why use them?](#why-use-them)
- [Quick start (5 minutes)](#quick-start-5-minutes)
- [Tutorial chapters](#tutorial-chapters)
- [Example skills](#example-skills)
- [Checklist before publishing](#checklist-before-publishing-a-skill)
- [FAQ / Troubleshooting](#faq--troubleshooting)
- [Contributing](#contributing)

---

## What are agent skills?

Agent skills are **markdown files** (with YAML frontmatter) that teach the Cursor AI how to perform specific tasks—like writing commit messages, reviewing code, or following your repo’s conventions. The agent applies a skill **automatically** when its description matches what you’re doing. You don’t turn skills on manually; Cursor picks them by relevance.

## Why use them?

- **Consistency:** Same commit format, same code-review checklist, same coding standards across projects or across your team.
- **Personal or shared:** Keep skills on your machine (all repos) or put them **in a repo** so everyone who clones it gets the same behavior.
- **No extra UI:** Skills are just files; the agent reads them when the conversation matches the description.

---

## Quick start (5 minutes)

**Create your first skill in 5 minutes:** follow the step-by-step guide below. You’ll create a folder, add a `SKILL.md` file, and test it in Cursor.

1. **Create a folder** for the skill:
   - **Personal (all projects):**  
     - Windows: `%USERPROFILE%\.cursor\skills\my-skill`  
     - macOS/Linux: `~/.cursor/skills/my-skill`
   - **Project (this repo only):** `.cursor/skills/my-skill` inside your repo.

2. **Add a `SKILL.md`** file with:
   - **Frontmatter:** `name` (lowercase, hyphens) and `description` (what the skill does and when to use it).
   - **Body:** Steps, templates, or examples the agent should follow.

3. **Restart Cursor** (if it was already open) so it loads the new skill.

4. **Use Cursor as usual**—when your request matches the description, the skill is applied.

**Full walkthrough:** [docs/00-quick-start.md](docs/00-quick-start.md) — create a “my first skill” from scratch with copy-paste and test it.

---

## Tutorial chapters

| # | Topic |
|---|--------|
| [00](docs/00-quick-start.md) | **Quick start** – Create your first skill in 5 minutes |
| [01](docs/01-what-are-skills.md) | What are agent skills? |
| [02](docs/02-where-to-put-skills.md) | Where to put skills (personal vs project, Windows & Unix paths) |
| [03](docs/03-writing-skill-md.md) | Writing SKILL.md (frontmatter, description, body) |
| [04](docs/04-descriptions-and-triggers.md) | Descriptions and triggers (WHAT + WHEN) |
| [05](docs/05-patterns-and-examples.md) | Patterns and examples (template, workflow, scripts) |
| [06](docs/06-project-vs-personal.md) | Project vs personal skills |
| [07](docs/07-faq.md) | FAQ / Troubleshooting |

---

## Example skills

Copy-pasteable examples you can drop into your own skills folder:

| Example | What it does |
|--------|----------------|
| [examples/commit-messages/](examples/commit-messages/) | Conventional commit messages from git diff |
| [examples/code-review/](examples/code-review/) | Code review checklist and feedback format |
| [examples/repo-standards/](examples/repo-standards/) | Repo-specific coding and testing conventions |

---

## Checklist before publishing a skill

Before you use or share a skill, run through [checklist.md](checklist.md) to ensure the description, structure, and (if any) scripts are in good shape.

---

## FAQ / Troubleshooting

**My skill isn’t triggering.**  
- Check the **description**: it must include both **WHAT** (what the skill does) and **WHEN** (e.g. “Use when the user asks for X”). Use phrases that match how you ask (e.g. “commit message”, “summarize”, “code review”).  
- **Restart Cursor** so it reloads skills.  
- Confirm the skill is in the right place: personal → `~/.cursor/skills/<name>/` (Windows: `%USERPROFILE%\.cursor\skills\<name>\`); project → `<repo>/.cursor/skills/<name>/`.  
- File must be named **SKILL.md** (capital SKILL) inside that folder.

**Cursor doesn’t see my personal skill.**  
- Personal skills live in `~/.cursor/skills/` (or `%USERPROFILE%\.cursor\skills\` on Windows). Create the folder and put `SKILL.md` inside it. Restart Cursor.

**How do I know which skill was used?**  
- The agent applies skills automatically; it may not say “using skill X”. If the response follows your skill’s format or steps, the skill was used. You can ask in chat: “Use my commit message skill” to nudge it.

**Can I use a skill only in one project?**  
- Yes. Put the skill in **project** location: `<repo>/.cursor/skills/<name>/` and commit it. It applies only when that repo is open.

More: [docs/07-faq.md](docs/07-faq.md).

---

## Contributing

Feel free to open an issue or pull request with more examples or improvements to this tutorial.
