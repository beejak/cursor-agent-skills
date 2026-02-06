# Cursor Agent Skills Tutorial

## What are agent skills?

Agent skills are markdown files (with YAML frontmatter) that teach the Cursor AI how to perform specific tasks—like writing commit messages, reviewing code, or following your repo’s conventions. The agent applies a skill automatically when its description matches what you’re doing.

## Why use them?

Skills give you consistent behavior across projects: same commit format, same code-review checklist, same coding standards. You can keep skills **personal** (on your machine for all repos) or put them **in a repo** so everyone who clones it gets the same behavior.

## Quick start (5 minutes)

1. Create a folder: `~/.cursor/skills/my-skill/` (personal) or `.cursor/skills/my-skill/` (inside a repo).
2. Add a `SKILL.md` file with a `name` and `description` in the frontmatter, plus instructions in the body.
3. Use Cursor as usual—when your request matches the description, the skill is applied.

See [docs/01-what-are-skills.md](docs/01-what-are-skills.md) for details.

## Tutorial chapters

- [01 – What are agent skills?](docs/01-what-are-skills.md)
- [02 – Where to put skills](docs/02-where-to-put-skills.md)
- [03 – Writing SKILL.md](docs/03-writing-skill-md.md)
- [04 – Descriptions and triggers](docs/04-descriptions-and-triggers.md)
- [05 – Patterns and examples](docs/05-patterns-and-examples.md)
- [06 – Project vs personal skills](docs/06-project-vs-personal.md)

## Example skills

Copy-pasteable examples you can drop into your own skills folder:

- [examples/commit-messages/](examples/commit-messages/) – Conventional commit messages from diffs
- [examples/code-review/](examples/code-review/) – Code review checklist and feedback format
- [examples/repo-standards/](examples/repo-standards/) – Repo-specific coding and testing conventions

## Checklist before publishing a skill

Before you use or share a skill, run through [checklist.md](checklist.md) to ensure description, structure, and (if any) scripts are in good shape.

## Contributing

Feel free to open an issue or pull request with more examples or improvements to this tutorial.
