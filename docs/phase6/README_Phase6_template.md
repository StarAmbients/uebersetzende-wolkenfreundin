# ☁️ Übersetzende Wolkenfreundin -- Phase 6 README

### Monitoring & Governance

*Last updated: (fill in date) · Author: Débora Schuch da Rosa*

------------------------------------------------------------------------

## 📑 Table of Contents

-   [🎯 Objective](#-objective)\
-   [📘 Overview](#-overview)\
-   [🧩 Components Created](#-components-created)\
-   [⚙️ Setup Steps (Monitoring &
    Governance)](#️-setup-steps-monitoring--governance)\
-   [📊 Dashboards & Alerts](#-dashboards--alerts)\
-   [🔒 Security & Access Governance](#-security--access-governance)\
-   [💰 Cost Control & Optimization](#-cost-control--optimization)\
-   [📂 Repository Structure After Phase
    6](#-repository-structure-after-phase-6)\
-   [✅ Validation Checklist](#-validation-checklist)\
-   [🔜 Next Phase -- Multilingual
    Expansion](#-next-phase--multilingual-expansion)\
-   [💭 Phase Reflection](#-phase-reflection)

------------------------------------------------------------------------

## 🎯 Objective

Implement a **comprehensive monitoring and governance framework** to
ensure transparency, reliability, and ethical compliance of the
translation system.\
This phase unites performance tracking, cost management, security, and
auditability.

------------------------------------------------------------------------

## 📘 Overview

During Phase 6, you'll:\
- Create **Cloud Monitoring Dashboards** for performance and uptime\
- Enable **structured logging and alerts** for translation errors\
- Manage **cost budgets and billing reports** in BigQuery\
- Apply **IAM and Secret Manager reviews**\
- Build **Looker Studio dashboards** for quality and usage oversight\
- Conduct **quarterly ethical and security reviews**

Estimated duration: **2 weeks**  Status: 🟡 In progress

------------------------------------------------------------------------

## 🧩 Components Created

  ------------------------------------------------------------------------
  Component               Purpose             Verification
  ----------------------- ------------------- ----------------------------
  Cloud Monitoring        Visualize system    Accessible in Google Cloud
  Dashboard               metrics (latency,   Console
                          error rate,         
                          throughput)         

  BigQuery Billing Export Track and analyze   Dataset `billing_export`
                          daily costs by      present
                          service             

  Error Reporting +       Receive             Alert emails or chat
  Alerts                  notifications for   messages sent
                          pipeline failures   

  IAM Review Report       Audit service       Exported CSV under
                          account permissions `/docs/audits/`

  Governance Dashboard    Show uptime, costs, Rendered in Looker Studio
                          quality scores,     
                          review activity     
  ------------------------------------------------------------------------

------------------------------------------------------------------------

## ⚙️ Setup Steps (Monitoring & Governance)

### 1️⃣ Enable Cloud Monitoring and Logging

``` bash
gcloud services enable monitoring.googleapis.com logging.googleapis.com errorreporting.googleapis.com
```

Create a workspace and link your project:

``` bash
gcloud monitoring workspaces create --project=$PROJECT_ID
```

------------------------------------------------------------------------

### 2️⃣ Set Up Metrics Collection

Track key performance indicators:\
- Translation latency per file\
- Number of translations per day\
- API success vs failure ratio\
- Average Gemini token usage\
- Cost per translated document

Store aggregated data in BigQuery (`translation_metrics`).

------------------------------------------------------------------------

### 3️⃣ Configure Budgets and Alerts

In Google Cloud Console:\
- **Billing → Budgets & Alerts** → set thresholds (50 / 75 / 90 %).\
- Connect to email and/or ChatOps for notifications.

Optional CLI example:

``` bash
gcloud beta billing budgets create --display-name="Wolkenfreundin Budget"   --billing-account=$BILLING_ACCOUNT   --amount=50   --thresholds=0.5,0.75,0.9
```

------------------------------------------------------------------------

### 4️⃣ Enable Error Reporting and Notifications

Configure Cloud Monitoring alert policies:\
\| Condition \| Trigger \| Notification \|\
\|------------\|----------\|---------------\|\
\| Translation Error Rate \> 5% \| 5xx errors in Cloud Run \| Email /
Chat \|\
\| Slow Job Duration \> 5 min \| Latency threshold exceeded \| Dashboard
alert \|\
\| Monthly Cost \> Budget Limit \| Cost alert \| Email / Billing \|

------------------------------------------------------------------------

## 📊 Dashboards & Alerts

**Cloud Monitoring Dashboard includes:**\
- Requests per minute (by service)\
- Average processing time\
- Error rates and timeouts\
- Cost trend over time\
- Uptime check for Cloud Run service

**Looker Studio Dashboard:**\
Visual overview of quality and financial performance:\
- Avg fidelity score by language\
- Documents processed per cycle\
- Budget vs actual costs\
- Reviewer activity and approval rates

------------------------------------------------------------------------

## 🔒 Security & Access Governance

  -----------------------------------------------------------------------
  Action               Purpose                Frequency
  -------------------- ---------------------- ---------------------------
  Review IAM roles for Ensure least-privilege Quarterly
  service accounts     access                 

  Rotate API keys      Reduce risk of         Every 90 days
  (DeepL, MS, Gemini)  exposure               

  Audit Secret Manager Confirm no             Monthly
  access               unauthorized reads     

  Enable CMEK if       Custom encryption for  Optional
  needed               sensitive data         

  Document security    Maintain transparency  As required
  incidents            and traceability       
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## 💰 Cost Control & Optimization

-   Cache repeated translations to reduce API calls.\
-   Use Gemini only for final QA sections.\
-   Clean old artifacts and logs automatically with lifecycle rules.\
-   Run Cloud Run with `min-instances=0` for idle savings.\
-   Monitor free-tier usage before expanding to other languages.

Monthly cost review table example:

  Service              Cost (€)   Optimization Action
  -------------------- ---------- -------------------------
  Cloud Run            12         Adjust concurrency to 5
  Vertex AI (Gemini)   15         Limit token count
  BigQuery             3          Partition datasets
  Storage              2          Archive old reports
  **Total**            **32 €**   Within budget ✅

------------------------------------------------------------------------

## 📂 Repository Structure After Phase 6

    /docs/phase6/
     ├── README_Phase6.md
     ├── dashboards/
     │   ├── monitoring_dashboard.json
     │   ├── cost_dashboard.json
     │   └── governance_dashboard.json
     ├── audits/
     │   ├── iam_roles_audit.csv
     │   ├── secret_manager_access.log
     │   └── quarterly_review_notes.md
     ├── budgets/
     │   └── monthly_budget_report.csv
     └── tests/
         └── monitoring_alert_tests.md

------------------------------------------------------------------------

## ✅ Validation Checklist

  Check                                Status
  ------------------------------------ --------
  Cloud Monitoring enabled             ⬜
  Error Reporting configured           ⬜
  Billing export to BigQuery working   ⬜
  IAM and secrets audited              ⬜
  Dashboards visualized                ⬜
  Budget alerts triggering correctly   ⬜
  Documentation updated                ⬜

------------------------------------------------------------------------

## 🔜 Next Phase -- Multilingual Expansion

After stabilizing monitoring and governance:\
1. Add support for English, Spanish, French, and Polish.\
2. Duplicate RAG glossaries for each language pair.\
3. Adjust provider routing rules for best quality per language.\
4. Expand dashboards to track language-specific metrics.

------------------------------------------------------------------------

## 💭 Phase Reflection

> "Governance is not control---it is care made visible."\
> Phase 6 ensures that light, language, and data all move in harmony,
> guided by clarity and trust.
