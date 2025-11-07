# ☁️ Übersetzende Wolkenfreundin -- Phase 1 README

### Environment Setup & Foundations

*Last updated: November 07, 2025 · Author: Débora Schuch da Rosa*

------------------------------------------------------------------------

## 📑 Table of Contents

-   [🎯 Objective](#-objective)
-   [🧩 Components Created](#-components-created)
-   [⚙️ Setup Steps (CLI Reference)](#️-setup-steps-cli-reference)
-   [📂 Repository Structure After Phase
    1](#-repository-structure-after-phase-1)
-   [✅ Validation Checklist](#-validation-checklist)
-   [🌈 Translation Keys Setup](#-translation-keys-setup)
    -   [☁ Overview](#-overview)
    -   [📘 Setup Guides](#-setup-guides)
    -   [✅ After Completing This Phase](#-after-completing-this-phase)
-   [🔜 Next Phase -- Knowledge Base
    (RAG)](#-next-phase--knowledge-base-rag)
-   [💭 Phase Reflection](#-phase-reflection)

------------------------------------------------------------------------

## 🎯 Objective

Establish a secure, fully configured **Google Cloud Platform (GCP)**
environment that serves as the foundation for all subsequent phases ---
**Knowledge Base (RAG)**, **Translation Pipeline**, and **AI
Verification**.

------------------------------------------------------------------------

## 🧩 Components Created

  ------------------------------------------------------------------------------------
  Component               Purpose             Verification
  ----------------------- ------------------- ----------------------------------------
  GCP Project             Main project        Visible in console.cloud.google.com
                          container for       
                          resources           

  Billing Account &       Enable usage +      Budget alert emails received
  Budgets                 alerts at           
                          50 / 75 / 90 %      

  APIs Enabled            Vertex AI,          `gcloud services list --enabled`
                          Discovery Engine,   
                          Cloud Run, Pub/Sub, 
                          Secret Manager,     
                          Storage, Logging    

  Cloud Storage Buckets   `de/`, `pt-BR/`,    `gsutil ls gs://ajudante-de-bruno-kb/`
                          `artifacts/`        
                          folders             

  IAM Service Accounts    Least‑privilege     Verified in IAM Console
                          roles for           
                          translation         
                          pipeline            

  GitHub Repo + VS Code   Version control for Commits synced
                          code and docs       

  Documentation           All project         `Proposta-de-projeto-versao-01.pdf`
                          blueprints uploaded present
  ------------------------------------------------------------------------------------

------------------------------------------------------------------------

## ⚙️ Setup Steps (CLI Reference)

### 1️⃣ Project & Billing

``` bash
docs/phase1/setup_gcp.sh
```

### 2️⃣ Enable Core APIs

``` bash
gcloud services enable   aiplatform.googleapis.com   discoveryengine.googleapis.com   storage.googleapis.com   run.googleapis.com   pubsub.googleapis.com   secretmanager.googleapis.com   logging.googleapis.com   cloudfunctions.googleapis.com   cloudbuild.googleapis.com   cloudscheduler.googleapis.com
```

### 3️⃣ Create Buckets

See **docs/phase1/bucket_structure.md**

### 4️⃣ IAM and Service Accounts

See **docs/phase1/iam_policy.json**

### 5️⃣ Budgets & Billing Export

**Console:** Billing → *Budgets & Alerts* → set 50 / 75 / 90 %
thresholds\
Enable **Billing Export → BigQuery** for cost tracking.

### 6️⃣ Initial Verification

-   Open Vertex AI → Search → *Preview* tab\
-   Confirm project and API access\
-   Run `gcloud projects describe $PROJECT_ID` for metadata check

------------------------------------------------------------------------

## 📂 Repository Structure After Phase 1

    /docs/phase1/
     ├── README_Phase1.md
     ├── setup_gcp.sh
     ├── bucket_structure.md
     ├── iam_policy.json
     ├── budget_config_notes.md
     ├── screenshots/

------------------------------------------------------------------------

## ✅ Validation Checklist

  Check                      Status
  -------------------------- --------
  GCP project active         ⬜
  Billing linked             ⬜
  APIs enabled               ⬜
  Buckets created            ⬜
  IAM configured             ⬜
  Budget alerts working      ⬜
  Docs committed to GitHub   ⬜

------------------------------------------------------------------------

## 🌈 Translation Keys Setup

### ☁ Overview

During this part of **Phase 1**, you'll connect the project to external
translation providers (DeepL and Microsoft Translator) and secure their
credentials using **Google Secret Manager**.\
Once complete, your environment will be fully ready for Phase 2 and
Phase 3.

------------------------------------------------------------------------

### 📘 Setup Guides

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  Document                                                     Purpose                  Download
  ------------------------------------------------------------ ------------------------ --------------------------------------------------------------------------
  🧩 **[How to Create and Secure Your DeepL API                Create a DeepL account,  📄 [deepl_api_key_setup.md](./deepl_api_key_setup.md)
  Key](./deepl_api_key_setup.md)**                             get your API key, and    
                                                               store it securely in     
                                                               Google Secret Manager.   

  🔑 **[How to Create and Secure Your Microsoft Translator API Configure a free         📄
  Key](./microsoft_translator_key_setup.md)**                  Microsoft Translator     [microsoft_translator_key_setup.md](./microsoft_translator_key_setup.md)
                                                               resource in Azure and    
                                                               store the key safely.    

  ☁ **[Connecting DeepL and Microsoft Translator to Your       Add both keys to your    📄 [translation_keys_integration.md](./translation_keys_integration.md)
  Google Cloud Project](./translation_keys_integration.md)**   Cloud Project, grant IAM 
                                                               permissions, and test    
                                                               the connections.         
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

### ✅ After Completing This Phase

You will have: - A working **Google Cloud environment** with secure
secret storage\
- Two operational translation engines
(**DeepL** + **Microsoft Translator**)\
- Verified connectivity for your upcoming **Translation Pipeline MVP**

> "Security first, clarity always --- even the smallest key can open a
> bridge of light." ✨

------------------------------------------------------------------------

## 🔜 Next Phase -- Knowledge Base (RAG)

1.  Collect approved German reports and Portuguese translations.\
2.  Upload to `gs://bruno-assistant-kb/de/2025H1/`.\
3.  Create a **Vertex AI Search datastore** with generative features
    enabled.\
4.  Test retrieval in Preview mode.\
5.  Document results in `/docs/phase2/README_Phase2.md`.

------------------------------------------------------------------------

## 💭 Phase Reflection

> "Technology connects us --- but the heart gives it meaning."\
> Phase 1 lays the ground where light and language will meet.
