# Quick start: Create your first skill in 5 minutes

Follow these steps to create a minimal skill and see it work in Cursor.

## 1. Create the skill folder

**Personal skill (all projects):**

- **Windows:** `%USERPROFILE%\.cursor\skills\my-first-skill`
- **macOS / Linux:** `~/.cursor/skills/my-first-skill`

Create that folder. On Windows you can run in Command Prompt:

```bat
mkdir "%USERPROFILE%\.cursor\skills\my-first-skill"
```

On macOS/Linux:

```bash
mkdir -p ~/.cursor/skills/my-first-skill
```

## 2. Create SKILL.md

Inside `my-first-skill`, create a file named **SKILL.md** (capital SKILL) with this content:

```markdown
---
name: my-first-skill
description: Suggests a short summary when the user asks to summarize something or says "summarize". Use when the user asks for a summary or recap.
---

# My First Skill

## What to do

When the user asks for a summary:

1. Read the content they refer to (file, selection, or message).
2. Reply with 2–3 short bullet points.
3. Keep each bullet to one line.
```

Save the file.

## 3. Restart Cursor (if needed)

Cursor loads skills when it starts. If Cursor was already open, close and reopen it so it picks up the new skill. (Some versions may load skills without a restart.)

## 4. Test the skill

1. Open any project in Cursor.
2. In the chat, try: **"Summarize the README"** or **"Give me a short summary of what's in this folder."**
3. The agent should use your skill: it will reply with a brief, bullet-point summary.

If the agent’s reply matches the style (2–3 bullets, one line each), the skill is working.

## 5. Change it and try again

Edit `SKILL.md`: for example, change "2–3 short bullet points" to "exactly 5 bullet points." Save, restart Cursor if needed, and ask for a summary again. The agent should follow the updated instructions.

---

## What you did

- You created a **personal** skill in `~/.cursor/skills/` (or `%USERPROFILE%\.cursor\skills\` on Windows).
- The **name** and **description** in the frontmatter tell Cursor what the skill does and when to use it.
- The **body** of the skill tells the agent how to respond (steps and format).

## Next steps

- [Where to put skills](02-where-to-put-skills.md) – personal vs project, paths on Windows and Unix.
- [Writing SKILL.md](03-writing-skill-md.md) – frontmatter rules, description, and structure.
- [Example skills](../examples/) – copy-paste examples (commit messages, code review, repo standards).
