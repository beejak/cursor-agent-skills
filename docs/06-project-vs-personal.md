# Project vs personal skills

## When to use personal skills

Use **personal** skills (`~/.cursor/skills/<skill-name>/`) when you want the same behavior in **every** project:

- Commit message format
- Code review checklist
- Changelog or release notes style

They stay on your machine and apply regardless of which repo you have open.

## When to use project skills

Use **project** skills (`<repo>/.cursor/skills/<skill-name>/`) when the behavior depends on **this** repo:

- Stack and frameworks (e.g. FastAPI, pytest, Black)
- Where tests live and how to run them
- API or folder conventions

The skill is part of the repo, so it’s versioned and shared with the codebase.

## Sharing project skills via GitHub

When you put skills in `.cursor/skills/` inside a repo and push to GitHub, everyone who clones the repo gets the same skills. New contributors (and their Cursor agents) automatically follow the same conventions without extra setup.

## You're done

You’ve gone through the tutorial. Next:

- Revisit the [README](../README.md) for the quick start and links.
- Try the [example skills](../README.md#example-skills) (commit-messages, code-review, repo-standards).
- Before publishing your own skill, run through the [checklist](../checklist.md).
