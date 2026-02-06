# FAQ / Troubleshooting

## My skill isn’t triggering

1. **Description:** The agent matches your request to the skill’s **description**. It must include:
   - **WHAT** the skill does (e.g. “Generate conventional commit messages from git diff”).
   - **WHEN** to use it (e.g. “Use when the user asks for a commit message or to summarize staged changes”).
   Use words you actually say in chat (e.g. “commit message”, “summarize”, “review this code”).

2. **Restart Cursor:** Skills are loaded at startup. Close and reopen Cursor after adding or changing a skill.

3. **Location:**  
   - Personal: `~/.cursor/skills/<skill-name>/` (Windows: `%USERPROFILE%\.cursor\skills\<skill-name>\`).  
   - Project: `<repo>/.cursor/skills/<skill-name>/`.  
   The file inside must be named **SKILL.md** (capital SKILL).

4. **Frontmatter:** Check that `name` and `description` are between the first `---` and second `---` at the top of `SKILL.md`. No typos in the YAML.

---

## Cursor doesn’t see my personal skill

- Create the folder yourself. Cursor does not create `~/.cursor/skills/` for you.  
- **Windows:** `%USERPROFILE%\.cursor\skills\my-skill\` (e.g. `C:\Users\YourName\.cursor\skills\my-skill\`).  
- **macOS / Linux:** `~/.cursor/skills/my-skill/`.  
- Put **SKILL.md** (capital SKILL, extension .md) inside that folder.  
- Restart Cursor.

---

## How do I know which skill was used?

The agent doesn’t always say “I’m using skill X.” If the reply matches your skill (e.g. commit format, checklist, tone), the skill was applied. You can explicitly ask: “Use my commit message skill to suggest a commit” to force the right context.

---

## Can I use a skill only in one project?

Yes. Put the skill in the **project** folder: `<repo>/.cursor/skills/<name>/` and commit it. It applies only when that repo is open in Cursor. Everyone who clones the repo gets the same skill.

---

## Can I have both personal and project skills?

Yes. Cursor loads skills from both `~/.cursor/skills/` (or `%USERPROFILE%\.cursor\skills\`) and `<repo>/.cursor/skills/`. If two skills match, the agent may use the one that fits best. Use distinct descriptions to avoid overlap.

---

## Description is long; is that OK?

Keep the description under **1024 characters**. Be specific: include WHAT and WHEN and a few trigger phrases. Long, vague descriptions don’t help matching.

---

## Back to the tutorial

- [README](../README.md)  
- [Quick start](00-quick-start.md)  
- [Checklist](../checklist.md)
