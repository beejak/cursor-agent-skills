# Where to put skills

## Personal skills (all projects)

Path: `~/.cursor/skills/<skill-name>/`

Example: `~/.cursor/skills/commit-messages/SKILL.md`

Skills here are available in **every** project you open in Cursor. Use this for workflows you want everywhere (e.g. commit format, code review checklist).

## Project skills (inside a repo)

Path: `<repo>/.cursor/skills/<skill-name>/`

Example: `my-repo/.cursor/skills/repo-standards/SKILL.md`

Skills here live in the repo. Anyone who clones the repo (and uses Cursor) gets the same skill. Use this for repo-specific conventions: stack, test layout, style, commands.

## How to choose

- **Personal:** Same workflow in all repos (commit messages, PR review, changelog style).
- **Project:** Conventions that depend on *this* repo (framework, test runner, folder layout).

You can use both: e.g. a personal “commit messages” skill and a project “repo-standards” skill in each repo.

## Next step

Next: [Writing SKILL.md](03-writing-skill-md.md).
