# ☁️ Übersetzende Wolkenfreundin -- Phase 3 README

### Translation Pipeline (MVP)

*Last updated: (fill in date) · Author: Débora Schuch da Rosa*

------------------------------------------------------------------------

## 📑 Table of Contents

-   [🎯 Objective](#-objective)\
-   [📘 Overview](#-overview)\
-   [🧩 Components Created](#-components-created)\
-   [⚙️ Setup Steps (Implementation
    Flow)](#️-setup-steps-implementation-flow)\
-   [🔁 Workflow Overview](#-workflow-overview)\
-   [🧠 Testing the MVP Pipeline](#-testing-the-mvp-pipeline)\
-   [📂 Repository Structure After Phase
    3](#-repository-structure-after-phase-3)\
-   [✅ Validation Checklist](#-validation-checklist)\
-   [🔜 Next Phase -- AI Verification & DOCX
    Output](#-next-phase--ai-verification--docx-output)\
-   [💭 Phase Reflection](#-phase-reflection)

------------------------------------------------------------------------

## 🎯 Objective

Develop the **Translation Pipeline (Minimum Viable Product)** that
automates document translation from German → Portuguese (Brazil),
integrating both translation APIs (DeepL + Microsoft Translator) and
enabling Gemini for optional post-editing.

This phase delivers the project's first working end-to-end translation
workflow.

------------------------------------------------------------------------

## 📘 Overview

During Phase 3, you'll:\
- Implement a **Cloud Run** service to process translation requests
automatically\
- Connect to **DeepL** and **Microsoft Translator** APIs securely (using
Secret Manager keys)\
- Integrate the **Knowledge Base (RAG)** from Phase 2 for contextual
grounding\
- Add job tracking, quality logging, and structured output format
(DOCX/TXT)\
- Test full document translation for a sample report

Estimated duration: **2--3 weeks**  Status: 🟡 In progress

------------------------------------------------------------------------

## 🧩 Components Created

  -----------------------------------------------------------------------
  Component               Purpose             Verification
  ----------------------- ------------------- ---------------------------
  Cloud Run Service       Executes the        Deployed and reachable via
                          translation         endpoint
                          workflow            

  Pub/Sub Topic           Triggers            Message appears on file
                          translation on new  upload
                          file uploads        

  Translation APIs        DeepL + Microsoft   API responses confirmed
                          Translator          
                          integration         

  Gemini (Post-Edit)      Refines tone and    Available via Vertex AI API
                          verifies fidelity   

  BigQuery Logs           Stores translation  Entries visible in BigQuery
                          metadata and        console
                          metrics             

  GCS Buckets             Organized storage   Files appear in correct
                          for originals,      folders
                          outputs, and        
                          artifacts           
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## ⚙️ Setup Steps (Implementation Flow)

### 1️⃣ Configure Pub/Sub Trigger

Create a topic that listens to new files in your input folder:

``` bash
gcloud pubsub topics create gcs.de.incoming.notifications
```

Then create a subscription for the Cloud Run service:

``` bash
gcloud pubsub subscriptions create translation-trigger   --topic=gcs.de.incoming.notifications   --push-endpoint=https://YOUR_CLOUD_RUN_URL/translate-file   --push-auth-service-account=translator-svc@PROJECT_ID.iam.gserviceaccount.com
```

------------------------------------------------------------------------

### 2️⃣ Build and Deploy Cloud Run Service

Deploy the containerized service using:

``` bash
gcloud run deploy translator-service   --source .   --region=us-central1   --set-secrets=DEEPL_API_KEY=DEEPL_API_KEY:latest,MS_TRANSLATOR_KEY=MS_TRANSLATOR_KEY:latest   --allow-unauthenticated
```

This service: 1. Receives event metadata from Pub/Sub\
2. Downloads the file from Cloud Storage\
3. Extracts text (PDF/DOCX)\
4. Calls DeepL and Microsoft Translator\
5. Retrieves context from RAG (Vertex AI Search)\
6. Chooses best candidate\
7. Optionally post-edits with Gemini\
8. Stores output and logs results

------------------------------------------------------------------------

### 3️⃣ Define Folder Structure in Cloud Storage

    gs://ajudante-de-bruno-kb/
     ├── de/incoming/         # Input originals
     ├── pt-BR/               # Translated outputs
     ├── artifacts/jobs/      # JSON job summaries
     └── artifacts/segments/  # Per-section QA files

------------------------------------------------------------------------

### 4️⃣ Enable Logging and Metrics

-   Enable **Cloud Logging** and **BigQuery Export**\
-   Store metrics such as `job_id`, `duration`, `provider`, and
    `fidelity_score`\
-   Visualize with **Looker Studio** (optional)

------------------------------------------------------------------------

## 🔁 Workflow Overview

    Upload → Pub/Sub Trigger → Cloud Run → DeepL / MS → Gemini → Output → Human Review

This flow ensures translation jobs are automatic, auditable, and
review-ready.

------------------------------------------------------------------------

## 🧠 Testing the MVP Pipeline

### Manual Test

Upload a file to the input folder:

``` bash
gsutil cp ./sample_reports/2025H1_test.docx gs://ajudante-de-bruno-kb/de/incoming/
```

Observe:\
- Pub/Sub trigger fires\
- Cloud Run job logs visible\
- Output document appears in `/pt-BR/2025H1/`\
- JSON logs saved in `/artifacts/jobs/`

### Verification Metrics

Check **BigQuery** for metrics table entries: \| Metric \| Description
\| \|--------\|--------------\| \| `fidelity_score` \| Semantic
similarity of translation \| \| `duration_sec` \| Time per document \|
\| `provider_used` \| DeepL or Microsoft Translator \| \| `status` \|
Success / Error \|

------------------------------------------------------------------------

## 📂 Repository Structure After Phase 3

    /docs/phase3/
     ├── README_Phase3.md
     ├── app/
     │   ├── main.py
     │   ├── requirements.txt
     │   └── Dockerfile
     ├── tests/
     ├── logs/
     └── artifacts/

------------------------------------------------------------------------

## ✅ Validation Checklist

  Check                          Status
  ------------------------------ --------
  Cloud Run service deployed     ⬜
  Pub/Sub trigger operational    ⬜
  Secrets loaded correctly       ⬜
  Translation output generated   ⬜
  Logs and metrics recorded      ⬜
  Documentation updated          ⬜

------------------------------------------------------------------------

## 🔜 Next Phase -- AI Verification & DOCX Output

After the MVP pipeline works: 1. Integrate **Gemini semantic
verification** (tone + meaning).\
2. Generate **review-ready DOCX** files.\
3. Implement structured **QA scoring** in BigQuery.\
4. Automate alerts and reviewer notifications.

------------------------------------------------------------------------

## 💭 Phase Reflection

> "Automation serves best when guided by meaning."\
> Phase 3 brings translation to life --- where cloud logic meets the
> heart of language.
