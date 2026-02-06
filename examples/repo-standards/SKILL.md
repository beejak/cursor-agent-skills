---
name: repo-standards
description: Apply this repo's coding and testing conventions. Use when writing or modifying code in this repository.
---

# Repo Standards

## Stack

- Backend: FastAPI; async where possible.
- Tests: pytest in `tests/`; run with `pytest`.
- Style: Black (line length 88), isort, type hints on public APIs.

## Conventions

- API routes under `app/routes/`; one module per domain.
- Use `app.core.config` for settings; no hardcoded secrets.
- New features require tests in `tests/` mirroring `app/` layout.

## Commands

- Install: `pip install -r requirements.txt`
- Test: `pytest`
- Lint: `black . && isort .`
