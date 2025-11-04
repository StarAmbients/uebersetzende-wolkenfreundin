# Quality Assurance & Validation Methods
_Übersetzende Wolkenfreundin – Applied AI Scientist / Engineer Portfolio_

---

## 🎯 Purpose

Quality assurance in this project goes beyond functional correctness.
It aims to ensure **reproducible, measurable, and explainable AI behavior** throughout the translation pipeline — from information retrieval (RAG) to linguistic post-editing.

These practices reflect a commitment to **scientific transparency**: every result can be independently replicated, reviewed, and improved by any new contributor.

---

## 🧩 QA Framework Overview

| Stage | Component | Verification Goal | Methodology |
|--------|------------|------------------|--------------|
| **1. Retrieval QA** | Vertex AI Search (RAG) | Ensure expected terms are correctly indexed and retrieved | OK/KO Search Testing |
| **2. Translation QA** | DeepL / Microsoft Translator | Validate fidelity and completeness of translation | Parallel corpus comparison; keyword coverage |
| **3. Post-Editing QA** | Gemini LLM post-processor | Evaluate tone, clarity, and stylistic alignment | Controlled prompts; linguistic heuristics |
| **4. Document QA** | DOCX Builder | Confirm bilingual alignment and formatting consistency | Automated paragraph mapping; visual inspection |
| **5. Human Review** | Reviewer Feedback Loop | Validate semantic equivalence and readability | Side-by-side reviewer template |
| **6. Regression QA** | Historical data checks | Detect drift in translation quality or search behavior | Reference dataset + scoring dashboard |

---

## 🔍 OK / KO Search Testing (Phase 1 Highlight)

**Objective:**
Verify that the system correctly distinguishes between known and unknown search terms within the knowledge base.

**Procedure A – Positive (OK)**
1. Open the *Preview Panel* in Vertex AI Search.
2. Enter a **known term** (e.g., `EB-Arbeitskreis`).
3. Expected outcome → relevant document(s) retrieved.
✅ **Result:** OK (term successfully matched).

**Procedure B – Negative (KO)**
1. Repeat using a **term not present** in the knowledge base (e.g., `EB-Tempelritter`).
2. Expected outcome → no results returned.
✅ **Result:** KO (system correctly reports absence).

**Interpretation:**
This binary-validation method (OK/KO) confirms the reliability of indexing and retrieval functions — establishing trust in all downstream translation logic.

---

## 🧮 Quantitative Scoring Model

Each translation or retrieval task can be assigned weighted scores to monitor longitudinal performance.

| Metric | Description | Target |
|---------|-------------|--------|
| **Precision @ 1** | Correctness of top search hit | ≥ 0.95 |
| **Coverage Rate** | Ratio of translated vs. untranslatable segments | ≥ 0.98 |
| **Tone Consistency Score** | Semantic + stylistic similarity between source and target | ≥ 0.90 |
| **Reviewer Satisfaction Index** | Post-review human score | ≥ 4.5 / 5 |

---

## 🔁 Reproducibility and Traceability

- All QA scripts and results are **version-controlled**.
- Every test case references its corresponding dataset and model version.
- Automated checks are integrated in the GitHub Actions CI workflow (`.github/workflows/checks.yml`).
- Logs and metrics are exportable to **BigQuery** for longitudinal analysis.

---

## 🧭 Future Enhancements (Phase 2 +)

- **Automated QA Dashboard** → real-time visualization of OK/KO and translation metrics.
- **LLM Evaluation Hooks** → integrate BLEU / COMET scores into the CI pipeline.
- **Bias and Tone Auditing** → systematic review of cultural and stylistic neutrality.
- **Continuous Validation** → nightly regression suite over representative documents.

---

## 🕊 Guiding Principle

> *Quality is clarity made measurable.*

Every component — model, prompt, or dataset — is traceable, testable, and explainable.
This philosophy turns AI development into an engineering discipline with the reliability of science.


