# Übersetzende Wolkenfreundin – The Cloud Translator Friend
**AI in Service of Light**

> *Applied AI Scientist building humane machine intelligence.*

---

## 🌤 Project Overview

**Übersetzende Wolkenfreundin** (“The Translating Cloud Friend”) is an AI-assisted, human-verified translation pipeline designed on **Google Cloud Platform (GCP)**.
It supports multilingual publishing for the **Bruno Gröning Circle of Friends**, enabling high-quality, context-aware translation from **German → Portuguese (Brazil)** while maintaining consistency and integrity across hundreds of reports.

**Status:** Phase 1 complete – infrastructure configuration, knowledge base preview, and OK/KO search validation using Vertex AI Search.

---

## 🧠 System Architecture

- **Vertex AI Search (RAG)** – contextual retrieval from the organization’s knowledge base.
- **Cloud Run / FastAPI** – scalable microservice for translation orchestration.
- **DeepL & Microsoft Translator APIs** – multilingual backbone for machine translation.
- **Gemini / Vertex AI models** – post-editing, tone adaptation, and linguistic refinement.
- **python-docx** – generates reviewer-friendly bilingual reports.
- **BigQuery & Dashboards** – central metrics and quality tracking.

📘 See [`docs/architecture.md`](docs/architecture.md) for the complete design and data flow.

---

## 🚀 Responsibilities & Leadership

As **Applied AI Scientist / Engineer & AI Tech Lead**, I designed and documented the foundation of a **human-in-the-loop AI translation system** combining cloud engineering and computational linguistics.

Key contributions:
- **End-to-end architecture** definition on Google Cloud (Vertex AI Search, Cloud Run, GCS).
- **QA and testing discipline** through reproducible OK/KO search experiments.
- **Process automation** to streamline daily development and reporting (`daily_eod.sh`, `dev_bootstrap.sh`).
- **Governance & standards** for version control, CI, and code reviews.
- **Documentation excellence** – each procedure can be replicated step-by-step by new contributors.

My leadership approach blends **academic rigor with industrial clarity**: making complex AI workflows transparent, testable, and maintainable.

---

## 👩‍🔬 About the Author

**Débora Schuch da Rosa**
*Applied AI Scientist / Engineer & Tech Lead*
📧 [phddebora@gmail.com](mailto:phddebora@gmail.com)

I am a **computer scientist and researcher** with more than two decades of experience across **applied mathematics, statistics, and artificial intelligence**.
After earning my Ph.D. in Computer Science, I conducted research at leading international institutions — **University of Trento (Italy)**, **Max Planck Institute (Germany)**, and **CNRS / LIP6 (France)** — before transitioning full-time to applied AI engineering.

I specialize in:
- Designing **robust, auditable AI pipelines** that minimize operational risk.
- Transforming scientific methods into **reproducible engineering workflows**.
- Leading cross-functional teams with a focus on clarity, ethics, and continuous improvement.

My goal is to contribute to **large-scale, mission-driven organizations** seeking rigorously engineered, transparent, and human-centered AI solutions.

---

## 🧭 Recruiter Tour — Explore the Work

| Focus Area | Reference | Description |
|-------------|------------|--------------|
| **Architecture & Design** | [`docs/architecture.md`](docs/architecture.md) | End-to-end data and service design on Google Cloud |
| **Quality & Testing** | [`docs/qa-methods.md`](docs/qa-methods.md) | OK/KO Search validation and translation QA |
| **Engineering Practice** | [`cloud-run/app/`](cloud-run/app/) + [`scripts/`](scripts/) | Cloud Run FastAPI service and automation scripts |
| **Governance & Ethics** | [`docs/governance.md`](docs/governance.md) | Logging, budgets, and responsible-AI policies |
| **Collaboration Model** | [`CONTRIBUTING.md`](CONTRIBUTING.md) + `.github/` | Contribution flow, CI, and pull-request process |

---

### 🕊 Vision
To lead AI initiatives that combine **mathematical depth, engineering precision, and human values**,
building computational systems that are **robust, transparent, and uplifting to those who create and use them.**

