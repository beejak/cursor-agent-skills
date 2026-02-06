# What are agent skills?

## Skills are instructions, not code

A skill is a markdown file with YAML frontmatter. It doesn’t run on its own—it tells the Cursor agent *how* to do something: what format to use, what steps to follow, and when to apply that behavior.

## When does the agent use a skill?

The agent reads each skill’s **description** (in the frontmatter). When your request or the current task matches that description, the agent applies the skill’s instructions. You don’t have to “turn on” a skill manually; it’s chosen by relevance.

## What goes in a skill?

- **Frontmatter:** `name` (lowercase, hyphens) and `description` (what the skill does and when to use it).
- **Body:** Steps, templates, examples, or checklists the agent should follow.

Keep the main `SKILL.md` under about 500 lines. For long reference material, link to separate files (e.g. `reference.md`, `examples.md`) from the skill.

### Minimal example

A complete skill can be this short:

```markdown
---
name: short-summary
description: Writes a 2–3 sentence summary. Use when the user asks for a summary or recap.
---

# Short Summary

Read the content the user refers to. Reply with 2–3 sentences. No bullet points.
```

The agent uses the **description** to decide when to apply the skill; the **body** tells it how to respond.

## Next step

- **Hands-on first?** [Quick start: create your first skill in 5 minutes](00-quick-start.md).
- **Read the guide:** [Where to put skills](02-where-to-put-skills.md).
