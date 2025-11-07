# ☁️ Übersetzende Wolkenfreundin -- Phase 2 README

### Knowledge Base (RAG) Creation & Contextual Search

*Last updated: (fill in date) · Author: Débora Schuch da Rosa*

------------------------------------------------------------------------

## 📑 Table of Contents

-   [🎯 Objective](#-objective)\
-   [📘 Overview](#-overview)\
-   [🧩 Components Created](#-components-created)\
-   [⚙️ Setup Steps (CLI Reference)](#️-setup-steps-cli-reference)\
-   [🔍 Testing the Knowledge Base](#-testing-the-knowledge-base)\
-   [📂 Repository Structure After Phase
    2](#-repository-structure-after-phase-2)\
-   [✅ Validation Checklist](#-validation-checklist)\
-   [🔜 Next Phase -- Translation Pipeline
    (MVP)](#-next-phase--translation-pipeline-mvp)\
-   [💭 Phase Reflection](#-phase-reflection)

------------------------------------------------------------------------

## 🎯 Objective

Create and index the **Knowledge Base (RAG)** that will provide
contextual grounding, glossary support, and reference alignment for all
translations performed by the system.\
This phase transforms previous reports and glossaries into a
**searchable AI context** that enhances translation accuracy and tone
fidelity.

------------------------------------------------------------------------

## 📘 Overview

During Phase 2, you'll: - Upload approved German reports and
corresponding translations\
- Build and configure a **Vertex AI Search (Discovery Engine)** Data
Store\
- Enable **generative features** for contextual responses\
- Verify retrieval accuracy and glossary grounding\
- Prepare the base for the **Translation Pipeline (MVP)**

Estimated duration: **2 weeks**  Status: 🟡 In progress

------------------------------------------------------------------------

## 🧩 Components Created

  ------------------------------------------------------------------------------------
  Component               Purpose             Verification
  ----------------------- ------------------- ----------------------------------------
  Cloud Storage Folders   Organized corpus    `gs://ajudante-de-bruno-kb/de/2025H1/`
                          for source and      and `/pt-BR/` visible
                          target texts

  Vertex AI Search Data   Stores indexed      Verified in Vertex AI Console
  Store                   documents with
                          embeddings for RAG

  Glossary CSV            Maintains approved  Accessible under
                          sacred terms and    `/docs/glossary/de-pt-BR/terms.csv`
                          stylistic
                          conventions

  Search Preview          Quick interface for "Try It" in Vertex AI Search shows
                          testing retrievals  results
  ------------------------------------------------------------------------------------

------------------------------------------------------------------------

## ⚙️ Setup Steps (CLI Reference)

### 1️⃣ Prepare Documents

Upload official, approved German source texts and validated Portuguese
translations:

``` bash
gsutil cp ./reports/de/*.pdf gs://ajudante-de-bruno-kb/de/2025H1/
gsutil cp ./reports/pt-BR/*.pdf gs://ajudante-de-bruno-kb/pt-BR/2025H1/
```

### 2️⃣ Create Vertex AI Search Data Store

**Console Path:** Vertex AI → Search → Create Data Store\
- Type: *Unstructured Data*\
- Source: Cloud Storage → select your bucket\
- Enable: *Generative Features*

### 3️⃣ Verify Indexing Status

Wait until ingestion completes.\
You can check progress in the Vertex AI Search dashboard or via CLI:

``` bash
gcloud discovery-engine data-stores list --project=$PROJECT_ID
```

### 4️⃣ Test Retrieval

Use *Search Preview* to ask questions or retrieve paragraphs.\
Examples: \> "Where does the 2025 H1 report mention healing through
trust?"\
\> "Show previous Portuguese translation for 'Freundeskreis'."

### 5️⃣ Upload or Update Glossary

Upload the bilingual glossary (CSV/JSON) to Cloud Storage or the repo:

    /docs/glossary/de-pt-BR/terms.csv

------------------------------------------------------------------------

## 🔍 Testing the Knowledge Base

Perform manual and automated tests to confirm: - Documents are
retrievable by keywords and context.\
- Generated summaries preserve factual meaning.\
- Glossary terms appear consistently in responses.\
- System retrieves references across years and themes.

Optional: record your findings in
`/docs/phase2/tests/verification_notes.md`.

------------------------------------------------------------------------

## 📂 Repository Structure After Phase 2

    /docs/phase2/
     ├── README_Phase2.md
     ├── glossary/
     │   └── de-pt-BR/
     │       └── terms.csv
     ├── datastore_config.json
     ├── ingestion_logs/
     └── tests/

------------------------------------------------------------------------

## ✅ Validation Checklist

  Check                           Status
  ------------------------------- --------
  Data Store created              ⬜
  Source + Target docs uploaded   ⬜
  Glossary file validated         ⬜
  Search preview working          ⬜
  Context retrieval accurate      ⬜
  Documentation updated           ⬜

------------------------------------------------------------------------

## 🔜 Next Phase -- Translation Pipeline (MVP)

After the RAG knowledge base is operational: 1. Integrate translation
providers (DeepL + Microsoft Translator).\
2. Connect RAG context retrieval into the translation flow.\
3. Implement side-by-side verification with Gemini.\
4. Begin document-level automation testing.

------------------------------------------------------------------------

## 💭 Phase Reflection

> "Knowledge becomes light when shared with purpose."\
> Phase 2 transforms archives into guidance, allowing every future
> translation to speak with clarity and heart.
