# Patterns and examples

## Template pattern

Define the **output format** the agent should produce. Use a clear template (e.g. for commit messages, PR comments, or report structure) so the agent knows exactly what to generate.

Example: “Use this format: `type(scope): short description` with types feat, fix, docs, etc.”

## Workflow pattern

Break the task into **numbered steps** and optionally a **checklist**. The agent can follow the steps and tick off items. Useful for code review, release notes, or multi-step operations.

Example: “Step 1: Read the diff. Step 2: Infer type and scope. Step 3: Write imperative subject line. Step 4: Add body only if needed.”

## Optional: utility scripts

You can add a `scripts/` folder inside the skill directory (e.g. `scripts/validate.py`). Use scripts when:

- The same operation must run the same way every time.
- You want to avoid putting long code blocks in the skill.

Document in the skill whether the agent should **run** the script or **read** it as reference. Use forward slashes in paths (e.g. `scripts/helper.py`), not Windows backslashes.

## From the examples in this repo

| Example | Pattern | What it shows |
|--------|---------|----------------|
| [commit-messages](../examples/commit-messages/SKILL.md) | **Template** | Output format (Conventional Commits), steps, and examples |
| [code-review](../examples/code-review/SKILL.md) | **Workflow** | Checklist and feedback format (Critical / Suggestion / Optional) |
| [repo-standards](../examples/repo-standards/SKILL.md) | **Project skill** | Stack, conventions, and commands for one repo |

Copy any of these into your own `~/.cursor/skills/<name>/` or `<repo>/.cursor/skills/<name>/` and edit to fit your workflow.

## Next step

Next: [Project vs personal skills](06-project-vs-personal.md).
