# ☁️ Übersetzende Wolkenfreundin -- Phase 7 README

### Multilingual Expansion 🌍

*Last updated: (fill in date) · Author: Débora Schuch da Rosa*

------------------------------------------------------------------------

## 📑 Table of Contents

-   [🎯 Objective](#-objective)\
-   [📘 Overview](#-overview)\
-   [🧩 Components Created](#-components-created)\
-   [⚙️ Setup Steps (Expansion Flow)](#️-setup-steps-expansion-flow)\
-   [🗂️ Language Data Organization](#-language-data-organization)\
-   [🧠 Model Routing and Provider
    Logic](#-model-routing-and-provider-logic)\
-   [🌐 RAG and Glossary Replication](#-rag-and-glossary-replication)\
-   [📊 Monitoring Across Languages](#-monitoring-across-languages)\
-   [📂 Repository Structure After Phase
    7](#-repository-structure-after-phase-7)\
-   [✅ Validation Checklist](#-validation-checklist)\
-   [💭 Phase Reflection](#-phase-reflection)

------------------------------------------------------------------------

## 🎯 Objective

Scale the **Übersetzende Wolkenfreundin** system to handle **multiple
language pairs**, building on the German--Portuguese foundation.\
This phase creates a modular architecture where each new language can be
added with minimal manual configuration.

------------------------------------------------------------------------

## 📘 Overview

During Phase 7, you'll:\
- Add support for new languages (e.g., English, Spanish, French,
Polish)\
- Replicate RAG datastores and glossaries per language pair\
- Configure provider routing (DeepL, Microsoft Translator, Gemini) based
on language strengths\
- Adapt QA metrics and dashboards for multilingual tracking\
- Verify system scalability and cost efficiency

Estimated duration: **4--6 weeks**  Status: 🟡 Planned

------------------------------------------------------------------------

## 🧩 Components Created

  -----------------------------------------------------------------------
  Component               Purpose             Verification
  ----------------------- ------------------- ---------------------------
  Multilingual RAG Stores Independent         Visible in Vertex AI
                          datastores per      Console
                          language pair       

  Global Glossary         Unified terminology CSV/JSON checked in repo
  Repository              across languages    

  Provider Routing Table  Assigns best        YAML config loaded at
                          translation         runtime
                          provider per        
                          language            

  BigQuery Multilingual   Tracks metrics      Rows partitioned by
  Table                   across languages    `target_lang`

  Dashboard -- Global     Visualize           Looker Studio charts
  Metrics                 translation volume  rendered
                          and quality by      
                          language            
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## ⚙️ Setup Steps (Expansion Flow)

### 1️⃣ Prepare Language Folders in Cloud Storage

    gs://ajudante-de-bruno-kb/
     ├── de/
     ├── pt-BR/
     ├── en/
     ├── es/
     ├── fr/
     └── pl/

Each folder follows the same structure as Phase 2 and Phase 3:\
- `incoming/` → new source texts\
- `review/` → AI verified\
- `reviewed/` → human approved

------------------------------------------------------------------------

### 2️⃣ Replicate RAG Data Stores per Language

Use Vertex AI Search to create one datastore per language pair:

``` bash
gcloud discovery-engine data-stores create   multilingual-de-en   --display-name="German-English RAG"   --project=$PROJECT_ID   --location=global
```

Repeat for `de-es`, `de-fr`, `de-pl`, etc.

------------------------------------------------------------------------

### 3️⃣ Expand Glossary Repository

Organize bilingual glossaries under:

    /docs/glossary/
     ├── de-pt-BR/terms.csv
     ├── de-en/terms.csv
     ├── de-es/terms.csv
     ├── de-fr/terms.csv
     └── de-pl/terms.csv

Each file contains:\
\| Term (DE) \| Translation \| Notes \| Approved By \|\
\|------------\|--------------\|--------\|---------------\|

------------------------------------------------------------------------

### 4️⃣ Configure Provider Routing

Add a routing config file (`translation_providers.yaml`):

``` yaml
de-pt-BR: DeepL
de-en: MicrosoftTranslator
de-es: DeepL
de-fr: DeepL
de-pl: MicrosoftTranslator
```

This ensures the pipeline selects the most accurate provider for each
pair.

------------------------------------------------------------------------

### 5️⃣ Integrate Language Metrics in BigQuery

Extend the metrics schema:

``` sql
ALTER TABLE translation_quality ADD COLUMN target_lang STRING;
ALTER TABLE translation_quality ADD COLUMN provider STRING;
```

Aggregate queries by language to generate quality and cost reports.

------------------------------------------------------------------------

## 🗂️ Language Data Organization

Each language pair acts as an independent unit in storage, RAG, and
review.\
This structure simplifies adding new languages without disrupting
existing flows.

------------------------------------------------------------------------

## 🧠 Model Routing and Provider Logic

The pipeline chooses providers and models dynamically:

``` python
if lang_pair == "de-en":
    provider = "MicrosoftTranslator"
elif lang_pair == "de-pt-BR":
    provider = "DeepL"
else:
    provider = "Gemini"
```

Gemini can serve as a universal fallback for rare languages or creative
tasks.

------------------------------------------------------------------------

## 🌐 RAG and Glossary Replication

-   RAG data stores are duplicated per language pair.\
-   Each store includes aligned glossary entries for consistent
    terminology.\
-   Glossary updates from human review (Phase 5) automatically propagate
    to all languages.

------------------------------------------------------------------------

## 📊 Monitoring Across Languages

**BigQuery Metrics:**\
\| Metric \| Description \|\
\|--------\|--------------\|\
\| `avg_fidelity_score` \| Average fidelity by language pair \|\
\| `total_docs_translated` \| Volume per cycle \|\
\| `cost_per_1000_chars` \| Monitored via billing export \|\
\| `provider_usage_share` \| Translation API distribution \|

**Looker Studio Dashboard:**\
- Interactive filters per language pair\
- Heatmaps of quality scores\
- Trend charts for usage and budget

------------------------------------------------------------------------

## 📂 Repository Structure After Phase 7

    /docs/phase7/
     ├── README_Phase7.md
     ├── glossaries/
     │   ├── de-en.csv
     │   ├── de-es.csv
     │   ├── de-fr.csv
     │   └── de-pl.csv
     ├── configs/
     │   └── translation_providers.yaml
     ├── dashboards/
     │   └── multilingual_metrics_dashboard.json
     ├── tests/
     │   └── multilingual_integration_tests.md

------------------------------------------------------------------------

## ✅ Validation Checklist

  Check                                 Status
  ------------------------------------- --------
  New languages created in GCS          ⬜
  RAG stores deployed for each pair     ⬜
  Glossaries verified and uploaded      ⬜
  Provider routing tested               ⬜
  Multilingual dashboards operational   ⬜
  Documentation updated                 ⬜

------------------------------------------------------------------------

## 💭 Phase Reflection

> "When language multiplies, understanding expands."\
> Phase 7 opens the project to the world --- connecting voices, hearts,
> and truths across nations.
