# Contributing

Thanks for helping this light‑bridge grow 🌤️

## Workflow
1. Create a branch: `git checkout -b feat/short-desc`
2. Commit using Conventional Commits (see below)
3. Open a PR to `main` → CI runs checks → review → merge

## Conventional Commits
- `feat:`, `fix:`, `docs:`, `chore:`, `refactor:`, `test:`, `build:`
- Optional scopes: `(cloud-run)`, `(docs)`, `(rag)`, `(qa)`

**Examples**
- `feat(cloud-run): add DOCX builder skeleton`
- `docs: write phase 1 testing overview`
- `chore: add .gitattributes and editorconfig`

## Coding style
- Python ≥3.10, `ruff` + `black` (pre-commit optional)
- Keep secrets out of git; use `config/example.env` as a guide

## Pull requests
- Fill the PR template
- Link issues (e.g., `Closes #12`)
- Include screenshots for docs/UI changes

## End‑of‑day routine (for daily commits)
- Use `scripts/daily_eod.sh` (or follow the checklist in that file)
