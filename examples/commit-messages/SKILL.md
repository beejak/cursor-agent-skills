---
name: commit-messages
description: Generate conventional commit messages from git diff or staged changes. Use when the user asks for a commit message, to summarize changes, or to write a commit.
---

# Commit Messages

## Format

Use [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <short description>

[optional body]
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`. Scope is optional (e.g. module or area).

## Steps

1. Read the diff (staged or recent changes).
2. Infer type and scope from the changes.
3. Write a short imperative subject line (e.g. "add login" not "added login").
4. Add a body only if the change needs explanation or breaking changes.

## Examples

- Changes add JWT login → `feat(auth): add JWT-based login`
- Changes fix date formatting → `fix(reports): correct timezone in date display`
- Changes only docs → `docs: update API README`
