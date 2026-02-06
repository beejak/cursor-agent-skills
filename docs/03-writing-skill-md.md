# Writing SKILL.md

## Required: directory and file

One skill = one directory with a `SKILL.md` file inside it.

- Directory name: lowercase, hyphens (e.g. `commit-messages`, `code-review`).
- File name: exactly `SKILL.md` (capital SKILL, extension .md).

## Required: YAML frontmatter

At the top of `SKILL.md`, add YAML between `---` lines:

```yaml
---
name: my-skill-name
description: Does X and Y. Use when the user does Z or asks for W.
---
```

- **name:** Lowercase letters, numbers, hyphens only. Max 64 characters. Unique identifier.
- **description:** What the skill does and when to use it. Max 1024 characters. Written in third person (see [04 – Descriptions and triggers](04-descriptions-and-triggers.md)).

## Required: description rules

The description is how the agent decides when to apply your skill. It must include:

1. **WHAT** the skill does (e.g. “Generate conventional commit messages from git diff”).
2. **WHEN** to use it (e.g. “Use when the user asks for a commit message or to summarize staged changes”).

Write in third person: “Generates…” not “I generate…” or “You can use this to…”.

## Body: instructions and examples

After the frontmatter, add a markdown body with:

- Clear steps or a workflow.
- Templates for output (e.g. commit format, PR comment structure).
- Concrete examples where they help.

Use headings (e.g. `## Format`, `## Steps`, `## Examples`) so the agent can scan and follow the skill easily.

## Keep it under 500 lines

For long reference material, put it in separate files (e.g. `reference.md`, `examples.md`) and link to them from `SKILL.md`. Keep references one level deep so the agent can load them when needed.

## Next step

Next: [Descriptions and triggers](04-descriptions-and-triggers.md).
