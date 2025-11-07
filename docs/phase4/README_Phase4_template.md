# ☁️ Übersetzende Wolkenfreundin -- Phase 4 README

### AI Verification & DOCX Output

*Last updated: (fill in date) · Author: Débora Schuch da Rosa*

------------------------------------------------------------------------

## 📑 Table of Contents

-   [🎯 Objective](#-objective)\
-   [📘 Overview](#-overview)\
-   [🧩 Components Created](#-components-created)\
-   [⚙️ Setup Steps (Implementation
    Flow)](#️-setup-steps-implementation-flow)\
-   [🧠 Gemini Verification Workflow](#-gemini-verification-workflow)\
-   [📝 DOCX Output Generation](#-docx-output-generation)\
-   [📊 Logging & Quality Metrics](#-logging--quality-metrics)\
-   [📂 Repository Structure After Phase
    4](#-repository-structure-after-phase-4)\
-   [✅ Validation Checklist](#-validation-checklist)\
-   [🔜 Next Phase -- Human Review & QA
    System](#-next-phase--human-review--qa-system)\
-   [💭 Phase Reflection](#-phase-reflection)

------------------------------------------------------------------------

## 🎯 Objective

Enhance translation quality through **AI-driven semantic verification**
using Gemini and generate fully formatted **DOCX review files** for
human revisors.

This phase transforms raw translated text into **auditable, review-ready
documents**, complete with alignment scores and fidelity checks.

------------------------------------------------------------------------

## 📘 Overview

During Phase 4, you'll:\
- Integrate **Gemini (Vertex AI)** to analyze translation fidelity and
tone\
- Implement a **post-editing process** that compares source and
translated text\
- Generate professional **DOCX outputs** in the official review layout\
- Record verification scores (fidelity, tone, glossary compliance) in
**BigQuery**\
- Deliver high-quality, human-ready translation files

Estimated duration: **3 weeks**  Status: 🟡 In progress

------------------------------------------------------------------------

## 🧩 Components Created

  -----------------------------------------------------------------------
  Component               Purpose             Verification
  ----------------------- ------------------- ---------------------------
  Gemini Verification     Evaluates meaning,  Returns alignment scores
  Module                  tone, and           per section
                          terminology         

  DOCX Generator          Produces structured Opens correctly and
                          documents for human maintains formatting
                          reviewers           

  BigQuery QA Tables      Store automated     Data visible in QA
                          evaluation metrics  dashboard

  Looker Studio Dashboard Visualize           Metrics and charts updated
                          translation quality 
                          trends              

  Artifact JSON Files     Contain detailed    Accessible in GCS
                          segment results     `/artifacts/segments/`
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## ⚙️ Setup Steps (Implementation Flow)

### 1️⃣ Integrate Gemini into the Pipeline

Add a new function to your Cloud Run service:

``` python
def verify_with_gemini(source_text, translated_text, glossary, context):
    prompt = f"Compare meaning and tone. Rate fidelity (0–1). Suggest improvements if needed."
    response = gemini_model.generate_content(
        [f"Source: {source_text}", f"Translation: {translated_text}", prompt]
    )
    return response.text
```

Use Vertex AI SDK or REST API to call Gemini and receive structured
feedback.

------------------------------------------------------------------------

### 2️⃣ Create Quality Scoring Schema in BigQuery

Define a new table:

``` sql
CREATE TABLE translation_quality (
  job_id STRING,
  section_id STRING,
  fidelity_score FLOAT64,
  tone_score FLOAT64,
  glossary_score FLOAT64,
  timestamp TIMESTAMP
);
```

Store results programmatically after each verification step.

------------------------------------------------------------------------

### 3️⃣ Configure DOCX Builder

Implement or extend the document generation module to create
**side-by-side layouts**:

  German Original     Portuguese Translation   Reviewer Notes
  ------------------- ------------------------ ----------------
  "Guten Morgen..."   "Bom dia..."             (empty)

Add headers and metadata automatically:

    Übersetzende Wolkenfreundin – Automated Translation (YYYY-MM-DD)
    Reviewer: ________________________

Use `python-docx` or similar to apply formatting and save outputs in
`/pt-BR/review/`.

------------------------------------------------------------------------

### 4️⃣ Store and Audit Outputs

-   Save verified documents under `/pt-BR/{cycle}/review/`\
-   Write QA metrics to BigQuery\
-   Upload per-section JSON summaries to `/artifacts/segments/`\
-   Log all job results in `/artifacts/jobs/`

------------------------------------------------------------------------

## 🧠 Gemini Verification Workflow

    Source → Translation → Gemini Analysis → Scores + Corrections → DOCX Assembly

Gemini checks: 1. Semantic equivalence\
2. Emotional tone preservation\
3. Terminology consistency\
4. Simplicity and clarity\
5. Cultural appropriateness

------------------------------------------------------------------------

## 📝 DOCX Output Generation

Each review document includes: - Page header with project and version\
- Sectioned translation pairs (DE ↔ PT-BR)\
- Reviewer Notes column\
- Automatic date and cycle reference

✅ Layout validated by revisor feedback.

------------------------------------------------------------------------

## 📊 Logging & Quality Metrics

Metrics stored in **BigQuery**:\
\| Field \| Description \| \|--------\|-------------\| \|
`fidelity_score` \| Degree of meaning preservation \| \| `tone_score` \|
Emotional alignment with source \| \| `glossary_score` \| Consistency
with approved terms \| \| `doc_version` \| Review file version
identifier \|

Optional Looker Studio dashboard shows: - Average fidelity per document\
- Glossary adherence rate\
- Reviewer correction frequency

------------------------------------------------------------------------

## 📂 Repository Structure After Phase 4

    /docs/phase4/
     ├── README_Phase4.md
     ├── app/
     │   ├── verify_gemini.py
     │   ├── docx_builder.py
     │   └── qa_metrics.py
     ├── outputs/
     │   └── review_samples/
     ├── tests/
     └── dashboards/
         └── looker_quality_dashboard.json

------------------------------------------------------------------------

## ✅ Validation Checklist

  Check                            Status
  -------------------------------- --------
  Gemini verification integrated   ⬜
  BigQuery table created           ⬜
  DOCX review file generated       ⬜
  QA scores recorded               ⬜
  Dashboard visualized             ⬜
  Documentation updated            ⬜

------------------------------------------------------------------------

## 🔜 Next Phase -- Human Review & QA System

Following automated verification, the next phase introduces: 1. Reviewer
workflow and version control\
2. Feedback and correction tracking\
3. Continuous improvement and retraining loop

------------------------------------------------------------------------

## 💭 Phase Reflection

> "Quality is not perfection---it is care made visible."\
> Phase 4 turns intelligence into assistance, transforming AI results
> into meaningful, reviewable translations.
