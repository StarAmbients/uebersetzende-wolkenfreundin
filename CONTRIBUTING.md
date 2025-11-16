# 📄 CONTRIBUTING.md
**Übersetzende Wolkenfreundin – Contribution Guide**

Thank you for your interest in contributing to Übersetzende Wolkenfreundin!
This project supports the Bruno Gröning Circle of Friends with clarity, care, and engineering excellence.
Contributions — even small ones — help uplift everyone involved.

This document explains how to contribute safely, respectfully, and effectively.

## 🌿 1. Prerequisites

Before contributing, please ensure you have:

- Python 3.11

- Git

- VS Code (recommended)

- GNU Make (for Windows: via Scoop, MSYS2, or Chocolatey)

Recommended VS Code extensions (auto-loaded through `.vscode/extensions.json`)

## 🧱 2. Local Development Setup

Follow the quick start from the main README or visit the full setup guide:

📘 Developer Setup Guide →
`/docs/developer-setup.md`

Short version:
```
py -3.11 -m venv .venv
source .venv/Scripts/activate
pip install -U pip
pip install -r cloud-run/requirements.txt
pip install -r requirements-dev.txt
```

Verify environment:
```
make lint
make test
make run
```

## 🌱 3. Branching Model

Please create a new branch for every contribution:
```
git checkout -b feat/my-feature-name
```

Naming conventions:

- `feat/...` – new feature

- `fix/...` – bug fix

- `docs/...` – documentation

- `chore/...` – CI, formatting, cleanup

Avoid pushing directly to main.

## 🧹 4. Code Quality Requirements

Run checks before committing:

```
make lint
make format
make test
```

Our code should always pass:

- ruff (static analysis)

- black (formatting)

- pytest (tests)

- GitHub CI workflows

This ensures consistent quality and predictable behavior across DEV / CI / PROD.

## ✨ 5. Commit Message Style

We use Conventional Commits:

| Type   | Meaning                      |
|--------|-------------------------------|
| `feat`:  | new feature                   |
| `fix`:   | bug fix                       |
| `docs`:  | documentation update          |
| `test`:  | tests added or improved       |
| `chore`: | build, configs, dependencies  |


Examples:
```
feat(rag): add glossary-based synonym expansion
fix(api): correct PDF ingestion error on Windows
docs: add developer setup guide
chore(ci): upgrade to Python 3.11 runtime
```

## 🔍 6. Pull Request Guidelines

Before opening a PR:

- Ensure your branch is up to date with `main`

- Run all checks locally

- Keep PRs small & focused

- Include context describing:

  - what you changed

  - why the change is needed

- screenshots or logs (if helpful)

Your PR will trigger CI, and all checks must pass before merging.

## 💬 7. Collaboration & Communication Principles

This is a spiritually aligned project.
Please:

- Exhibit respect and kindness

- Assume good intentions

- Communicate clearly

- Document decisions

- Ask questions freely

- Support learning — yours and others’

We build this with a sense of service.

## 🔒 8. Security and Privacy

Do NOT commit:

- API keys

- service account JSON files

- `.env` files

- secrets, credentials, or tokens

- sensitive internal reports

If you discover a security issue, report it privately.

## 🎁 9. Thank you

Thank you for contributing!
Your participation helps build a tool that supports translators, preserves sacred terminology, and spreads clarity and goodwill.

Every contribution — small or large — is deeply appreciated. 💛
