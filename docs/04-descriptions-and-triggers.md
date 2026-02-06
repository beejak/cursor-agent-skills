# Descriptions and triggers

## Why the description matters

The agent uses the skill’s **description** to decide when to apply it. No separate “enable/disable” is needed—if your request or the current task matches the description, the skill is used. A vague description means the skill may be used too often or not at all.

## Include both WHAT and WHEN

- **WHAT:** The specific capability (e.g. “Generate conventional commit messages from git diff”).
- **WHEN:** Trigger scenarios (e.g. “Use when the user asks for a commit message or to summarize staged changes”).

Combined example: “Generate conventional commit messages from git diff. Use when the user asks for a commit message or to summarize staged changes.”

## Write in third person

The description is injected into the system prompt. Write as if describing the skill from the outside:

- Good: “Processes Excel files and generates reports.”
- Avoid: “I can help you process Excel files.”
- Avoid: “You can use this to process Excel files.”

## Good and bad examples

**Good:**

- “Generate conventional commit messages from git diff. Use when the user asks for a commit message or to summarize staged changes.”
- “Review code for quality, security, and maintainability. Use when reviewing pull requests, examining code changes, or when the user asks for a code review.”

**Bad:**

- “Helps with commits.” (too vague; no WHEN)
- “I write commit messages for you.” (first person; no WHEN)

## Next step

Next: [Patterns and examples](05-patterns-and-examples.md).
