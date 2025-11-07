# ☁️ Übersetzende Wolkenfreundin -- Phase 5 README

### Human Review & QA System

*Last updated: (fill in date) · Author: Débora Schuch da Rosa*

------------------------------------------------------------------------

## 📑 Table of Contents

-   [🎯 Objective](#-objective)\
-   [📘 Overview](#-overview)\
-   [🧩 Components Created](#-components-created)\
-   [⚙️ Setup Steps (Implementation
    Flow)](#️-setup-steps-implementation-flow)\
-   [🧠 Reviewer Workflow](#-reviewer-workflow)\
-   [📊 Feedback Loop & Quality
    Improvement](#-feedback-loop--quality-improvement)\
-   [📂 Repository Structure After Phase
    5](#-repository-structure-after-phase-5)\
-   [✅ Validation Checklist](#-validation-checklist)\
-   [🔜 Next Phase -- Monitoring &
    Governance](#-next-phase--monitoring--governance)\
-   [💭 Phase Reflection](#-phase-reflection)

------------------------------------------------------------------------

## 🎯 Objective

Establish a **human-in-the-loop review and QA system** that ensures
every translation produced by the pipeline is validated by a qualified
reviewer.\
This phase creates the structure for feedback collection, version
control, and continuous quality improvement.

------------------------------------------------------------------------

## 📘 Overview

During Phase 5, you'll:\
- Implement a reviewer workflow for validating DOCX outputs\
- Track approval status, comments, and corrections in BigQuery\
- Introduce version control for translated documents in Cloud Storage\
- Establish a feedback loop for AI learning and glossary updates\
- Provide a dashboard for review metrics and correction rates

Estimated duration: **3 weeks**  Status: 🟡 In progress

------------------------------------------------------------------------

## 🧩 Components Created

  ------------------------------------------------------------------------
  Component               Purpose             Verification
  ----------------------- ------------------- ----------------------------
  Reviewer Upload Folder  Dedicated path for  File appears under
                          approved            `/pt-BR/reviewed/`
                          translations        

  BigQuery Review Table   Tracks approvals,   Records visible in QA
                          corrections, and    dashboard
                          comments            

  Correction Interface    Google Docs or web  Comments saved to revision
                          UI for review input log

  Feedback Collector      Parses changes and  Revisions stored in
                          updates learning    `/artifacts/revisions/`
                          repository          

  Dashboard -- Review     Shows progress and  Charts displayed in Looker
  Metrics                 reviewer            Studio
                          performance         
  ------------------------------------------------------------------------

------------------------------------------------------------------------

## ⚙️ Setup Steps (Implementation Flow)

### 1️⃣ Create Reviewer Folders in Cloud Storage

    gs://ajudante-de-bruno-kb/
     ├── pt-BR/review/           # AI-verified outputs  
     ├── pt-BR/reviewed/         # Human-approved translations  
     └── artifacts/revisions/    # Revision JSON logs

------------------------------------------------------------------------

### 2️⃣ Design Review Log Schema in BigQuery

``` sql
CREATE TABLE review_history (
  job_id STRING,  
  reviewer_id STRING,  
  approval_status STRING,  -- Approved, Needs Revision, Rejected  
  comments STRING,  
  num_edits INT64,  
  approval_date TIMESTAMP  
);
```

------------------------------------------------------------------------

### 3️⃣ Implement Revision Tracking

Every approved or corrected document creates a revision record.\
Store side-by-side diffs (JSON) in `/artifacts/revisions/`.\
Optional fields: `edit_distance`, `terminology_violations`,
`style_adjustments`.

------------------------------------------------------------------------

### 4️⃣ Develop Reviewer Workflow (Web or Docs Interface)

Reviewers open the DOCX (or Google Doc) in the official format:

  Original (DE)   Translation (PT-BR)   Reviewer Notes
  --------------- --------------------- ---------------------
  "..."           "..."                 OK / Suggest change

Steps:\
1. Review each section.\
2. Add comments or edit the translation column.\
3. Save and upload the file to `/pt-BR/reviewed/`.\
4. The system logs the event and marks the document as *approved*.

------------------------------------------------------------------------

## 🧠 Reviewer Workflow

    AI Output → Human Review → Corrections → Approval → Feedback Stored

-   Human review remains the final authority.\
-   All changes and comments are auditable and versioned.\
-   Review logs feed the continuous learning loop for AI prompt
    refinement.

------------------------------------------------------------------------

## 📊 Feedback Loop & Quality Improvement

  Source of Feedback      System Action
  ----------------------- --------------------------------------
  Low fidelity segments   Gemini prompts adjusted for next run
  Glossary deviations     Terminology list updated
  Recurrent style edits   Post-edit templates improved
  High approval rates     Confirm stability of pipeline

Quarterly reports summarize review activity and feed into governance
audits.

------------------------------------------------------------------------

## 📂 Repository Structure After Phase 5

    /docs/phase5/
     ├── README_Phase5.md
     ├── reviewers/
     │   ├── reviewer_guidelines.md
     │   └── templates/
     │       └── review_format.docx
     ├── feedback/
     │   ├── corrections_log.json
     │   └── learning_repository.csv
     ├── dashboards/
     │   └── review_metrics_dashboard.json
     └── tests/

------------------------------------------------------------------------

## ✅ Validation Checklist

  Check                          Status
  ------------------------------ --------
  Reviewer folders created       ⬜
  BigQuery review table active   ⬜
  Corrections logged properly    ⬜
  Feedback loop working          ⬜
  Dashboard displaying metrics   ⬜
  Documentation updated          ⬜

------------------------------------------------------------------------

## 🔜 Next Phase -- Monitoring & Governance

After the human review system stabilizes:\
1. Enable automated alerts for pipeline errors and delays.\
2. Add security audits and access reviews.\
3. Integrate cost and performance dashboards in Looker Studio.

------------------------------------------------------------------------

## 💭 Phase Reflection

> "True quality emerges when humans and machines listen to each other."\
> Phase 5 weaves trust into technology --- making translation a shared
> act of care.
