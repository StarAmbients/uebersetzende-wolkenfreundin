# ☁️ Übersetzende Wolkenfreundin -- *The Cloud Translator Friend*
[![CI](https://github.com/StarAmbients/uebersetzende-wolkenfreundin/actions/workflows/checks.yml/badge.svg)](https://github.com/StarAmbients/uebersetzende-wolkenfreundin/actions/workflows/checks.yml)

![Contributors](https://img.shields.io/github/contributors/StarAmbients/uebersetzende-wolkenfreundin)

![Contributors Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen)


### **AI in Service of Light**

> *Applied AI Scientist building humane machine intelligence.*

------------------------------------------------------------------------

## 🌤 Project Overview

**Übersetzende Wolkenfreundin** ("The Translating Cloud Friend") is an
AI-assisted, human-verified translation pipeline designed on **Google
Cloud Platform (GCP)**.\
It enables multilingual publishing for the **Bruno Gröning Circle of
Friends**, delivering high-quality, context-aware translations from
**German → Portuguese (Brazil)** while preserving tone, glossary
consistency, and spiritual integrity.

**Status:** ✅ *Phase 1 complete* --- infrastructure configuration,
knowledge-base preview, and OK/KO search validation using Vertex AI
Search.

------------------------------------------------------------------------

## 🪄 Project Phases Overview

  --------------------------------------------------------------------------------------------------
  Phase           Focus            Documentation                                      Status
  --------------- ---------------- -------------------------------------------------- --------------
  ☁ **Phase 1 --  Google Cloud     📘 [Phase 1                                        🟢 Complete /
  Environment     configuration,   README](./docs/phase1/README_Phase1_final.md)      🟡 In Progress
  Setup &         IAM, budgets,
  Foundations**   and translation
                  key setup
                  (DeepL +
                  Microsoft
                  Translator).

  📚 **Phase 2 -- Creation of the  📘 [Phase 2                                        🟡 In Progress
  Knowledge Base  contextual       README](./docs/phase2/README_Phase2_template.md)
  (RAG)**         knowledge
                  repository and
                  glossary
                  integration for
                  improved
                  translation
                  accuracy.

  💬 **Phase 3 -- Automated        📘 [Phase 3                                        ⏳ Upcoming
  Translation     translation      README](./docs/phase3/README_Phase3_template.md)
  Pipeline        workflow
  (MVP)**         integrating
                  DeepL, Microsoft
                  Translator, and
                  Gemini AI for
                  post-editing.

  ⚙️ **Phase      Verification →   📘 [Project Phase                                  🔵 Planned
  4--8**          Review →         Overview](./docs/Project_Phase_Overview.md)
                  Governance →
                  Multilingual
                  Expansion →
                  Launch
  --------------------------------------------------------------------------------------------------

> Each phase README includes 🎯 Objectives · 🧩 Components · ⚙️ Setup
> Steps · ✅ Checklist · 🔜 Next Steps.\
> "Technology connects us --- but documentation keeps us aligned." ✨

------------------------------------------------------------------------

## 🧠 System Architecture

-   **Vertex AI Search (RAG)** --- contextual retrieval from
    organization's corpus\
-   **Cloud Run / FastAPI** --- translation orchestration microservice\
-   **DeepL & Microsoft Translator** --- machine translation engines\
-   **Gemini / Vertex AI** --- post-editing and semantic fidelity
    analysis\
-   **python-docx** --- generates reviewer-friendly bilingual documents\
-   **BigQuery + Looker Studio** --- logging, QA metrics, and dashboards

📘 See [`docs/architecture.md`](docs/architecture.md) for complete
design and data flow.

------------------------------------------------------------------------

## ⚡ Quick Start

``` bash
# Clone the repository
git clone https://github.com/yourusername/uebersetzende-wolkenfreundin.git
cd uebersetzende-wolkenfreundin

# Explore documentation
open docs/Project_Phase_Overview.md
```
------------------------------------------------------------------------

## 👩‍💻 Developer Quick Start (Local Setup)

To contribute to **Übersetzende Wolkenfreundin**, follow this quick setup guide.

### 1. Install prerequisites
- Python **3.11**
- Git
- VS Code (recommended)
- GNU Make (Windows users: install via MSYS2, Scoop, or Chocolatey)
- Recommended VS Code extensions (auto-suggested via `.vscode/extensions.json`)

---

### 2. Create the development environment

```bash
# From the project root
py -3.11 -m venv .venv
source .venv/Scripts/activate  # Git Bash on Windows
pip install -U pip
```

---

### 3. Install dependencies

```bash
pip install -r cloud-run/requirements.txt      # Production dependencies
pip install -r requirements-dev.txt            # Development tools
```

---

### 4. Run tests & code quality checks

```bash
make lint
make test
```

---

### 5. Auto-format code

```bash
make format
```

---

### 6. Run the app locally

```bash
cd cloud-run
make run
```

[Local server running at http://localhost:8080](http://localhost:8080)

For the full detailed developer guide, see:
👉 **[`/docs/developer-setup.md`](docs/developer-setup.md)**

------------------------------------------------------------------------

## 🚀 Responsibilities & Leadership

As **Applied AI Scientist / Engineer & Tech Lead**, I designed and
documented the foundation of a **human-in-the-loop AI translation
system** combining cloud engineering and computational linguistics.

Key contributions:\
- 🧭 End-to-end architecture on Google Cloud (Vertex AI Search, Cloud
Run, GCS)\
- 🧪 Rigorous QA and OK/KO testing methodology\
- ⚙️ Automation for daily development and reporting\
- 🛡 Governance & standards for version control and CI/CD\
- 📘 Comprehensive technical documentation

My leadership approach blends **academic rigor with industrial clarity**
--- making complex AI workflows transparent, testable, and maintainable.

------------------------------------------------------------------------

## 👩‍🔬 About the Author

**Débora Schuch da Rosa**\
*Applied AI Scientist / Engineer & Tech Lead*\
📧 <phddebora@gmail.com>

Ph.D. in Computer Science \| Research experience: **University of Trento
(Italy)**, **Max Planck Institute (Germany)**, **CNRS/LIP6 (France)**.

Expertise in applied mathematics, AI engineering, and computational
linguistics --- designing robust, reproducible AI pipelines that serve
meaningful human goals.

------------------------------------------------------------------------

## 🧭 Recruiter Tour --- Explore the Work

  --------------------------------------------------------------------------------------------------
  Focus Area               Reference                                        Description
  ------------------------ ------------------------------------------------ ------------------------
  **Architecture &         [`docs/architecture.md`](docs/architecture.md)   End-to-end data and
  Design**                                                                  service design on GCP

  **Quality & Testing**    [`docs/qa-methods.md`](docs/qa-methods.md)       OK/KO search validation
                                                                            and translation QA

  **Engineering Practice** [`cloud-run/app/`](cloud-run/app/) +             Cloud Run FastAPI
                           [`scripts/`](scripts/)                           service and automation
                                                                            scripts

  **Governance & Ethics**  [`docs/governance.md`](docs/governance.md)       Logging, budgets, and
                                                                            Responsible-AI standards

  **Collaboration Model**  [`CONTRIBUTING.md`](CONTRIBUTING.md) +           Contribution flow, CI,
                           `.github/`                                       and review process
  --------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

## 🤝 Contributing Guidelines

First of all — thank you for your interest in contributing to **Übersetzende Wolkenfreundin**!
This project is part of a larger initiative to support the Bruno Gröning Circle of Friends with clarity, care, and technical excellence.
Even small contributions can have a meaningful impact.

Here’s how to participate effectively and respectfully:

---

### 1. 🧱 Set Up Your Development Environment

Follow the quick start guide in the README to:

- install Python 3.11
- create the `.venv` virtual environment
- install production + dev dependencies
- run tests and linters
- run the app locally

For full details, see:
👉 **[`/docs/developer-setup.md`](docs/developer-setup.md)**

---

### 2. 🌿 Branching Model

Please follow this workflow:

- Work in a **feature branch**
  ```bash
  git checkout -b feat/my-feature-name
  ```
- Use short, meaningful names:
  - feat/glossary-parser
  - fix/rag-query-bug
  - chore/ci-update

- Avoid making changes directly on `main`.

---

### 3. 🧹 Code Style & Quality

Before committing:

Run linting and formatting:
  ```bash
  make lint
  make format
  ```

Run the tests:
  ```bash
  make test
  ```
Your PR should pass:

  - Ruff (linting)
  - Black (formatting)
  - Pytest (test suite)
  - GitHub CI checks

---

### 4. ✨ Commit Message Format

Please follow Conventional Commits:

| Type   | Meaning                      |
|--------|-------------------------------|
| `feat`:  | new feature                   |
| `fix`:   | bug fix                       |
| `docs`:  | documentation update          |
| `test`:  | tests added or improved       |
| `chore`: | build, configs, dependencies  |

Examples:
  ```bash
  feat(rag): add glossary-based context expansion
  fix(api): correct 500 error when uploading PDF
  docs: add Phase 2 developer setup guide
  chore(ci): align GitHub Actions with Python 3.11
  ```

---

### 5. 🔍 Pull Requests

When opening a PR:

- Describe what you changed

- Explain why you changed it

- If relevant, include screenshots or logs

- Ensure all CI checks are green

- Keep PRs small and focused

Small PRs are easier to review, test, and merge.

---

### 6. 💬 Communication Principles

Since this project touches sacred content and a spiritual mission:

- Be respectful

- Assume good intentions

- Document decisions clearly

- Prioritize accuracy and clarity

- Value collaboration and learning

We are here to uplift each other — technically and spiritually.

---

### 7. 🔒 Security

Never commit:

- API keys

- Google Cloud service account files

- `.env` files

- private datasets

- internal or confidential reports

The .gitignore already protects many of these, but please remain careful.

If you find a security issue, report it privately.

---

### 8. 🎉 Welcome!

If you’re new to open source — welcome!

If you’re experienced — welcome too!

Every contribution helps the project grow.

Thank you for supporting this initiative with your energy, clarity, and light.

------------------------------------------------------------------------

## ✨ Contributors

Thanks goes to these wonderful people 💛

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://beacons.ai/deboraschuch"><img src="https://avatars.githubusercontent.com/u/2199062?v=4?s=100" width="100px;" alt="Debora Schuch da Rosa"/><br /><sub><b>Debora Schuch da Rosa</b></sub></a><br /><a href="https://github.com/StarAmbients/uebersetzende-wolkenfreundin/commits?author=StarAmbients" title="Code">💻</a> <a href="https://github.com/StarAmbients/uebersetzende-wolkenfreundin/commits?author=StarAmbients" title="Documentation">📖</a> <a href="#ideas-StarAmbients" title="Ideas, Planning, & Feedback">🤔</a> <a href="#maintenance-StarAmbients" title="Maintenance">🚧</a> <a href="#projectManagement-StarAmbients" title="Project Management">📆</a> <a href="https://github.com/StarAmbients/uebersetzende-wolkenfreundin/commits?author=StarAmbients" title="Tests">⚠️</a> <a href="#design-StarAmbients" title="Design">🎨</a> <a href="#tool-StarAmbients" title="Tools">🔧</a> <a href="#tutorial-StarAmbients" title="Tutorials">✅</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://allcontributors.org) specification.
Contributions of any kind are welcome!

------------------------------------------------------------------------

## 🕊 Vision

To lead AI initiatives that combine **mathematical depth**,
**engineering precision**, and **human values** --- building
computational systems that are **robust, transparent, and uplifting** to
those who create and use them.
