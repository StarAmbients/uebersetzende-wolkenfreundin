☁️ Übersetzende Wolkenfreundin – Phase 1 README
Environment Setup & Foundations

Duration: 2–3 weeks  Status: 🟡 In progress
Owner: Débora Schuch da Rosa

🎯 Objective

Establish a secure, fully configured Google Cloud Platform (GCP) environment that serves as the foundation for all subsequent phases — Knowledge Base (RAG), Translation Pipeline, and AI Verification.

🧩 Components Created
Component	Purpose	Verification
GCP Project	Main project container for resources	Visible in console.cloud.google.com

Billing Account & Budgets	Enable usage + alerts at 50 / 75 / 90 %	Budget alerts emails received
APIs Enabled	Vertex AI, Discovery Engine, Cloud Run, Pub/Sub, Secret Manager, Storage, Logging	gcloud services list --enabled
Cloud Storage Buckets	de/, pt-BR/, artifacts/ folders	gsutil ls gs://ajudante-de-bruno-kb/
IAM Service Accounts	Least-privilege roles for translation pipeline	Verified in IAM Console
GitHub Repo + VS Code	Version control for code and docs	Commits synced
Documentation	All project blueprints uploaded	Proposta-de-projeto-versao-01.pdf present

⚙️ Setup Steps ( CLI Reference )
1️⃣ Project & Billing
docs\phase1\setup_gcp.sh

2️⃣ Enable Core APIs
gcloud services enable \
  aiplatform.googleapis.com \
  discoveryengine.googleapis.com \
  storage.googleapis.com \
  run.googleapis.com \
  pubsub.googleapis.com \
  secretmanager.googleapis.com \
  logging.googleapis.com \
  cloudfunctions.googleapis.com \
  cloudbuild.googleapis.com \
  cloudscheduler.googleapis.com

3️⃣ Create Buckets
docs\phase1\bucket_structure.md

4️⃣ IAM and Service Accounts
docs\phase1\iam_policy.json

5️⃣ Budgets & Billing Export

Console → Billing > Budgets & Alerts → set 50 / 75 / 90 % thresholds

Enable Billing Export → BigQuery for cost tracking

6️⃣ Initial Verification

Open Vertex AI → Search → Preview (tab)

Confirm project and API access

Run gcloud projects describe $PROJECT_ID for metadata check

📂 Repository Structure After Phase 1
/docs/phase1/
 ├── README_Phase1.md
 ├── setup_gcp.sh            # optional script version
 ├── bucket_structure.md
 ├── iam_policy.json
 ├── budget_config_notes.md
 └── screenshots/

✅ Validation Checklist
Check	Status
GCP project active	⬜
Billing linked	⬜
APIs enabled	⬜
Buckets created	⬜
IAM configured	⬜
Budget alerts working	⬜
Docs committed to GitHub	⬜

🔜 Next Phase (Phase 2 – Knowledge Base RAG)

Collect approved German reports and Portuguese translations.

Upload to gs://bruno-assistant-kb/de/2025H1/.

Create Vertex AI Search datastore with generative features enabled.

Test retrieval in Preview mode.

Document results in /docs/phase2/README_Phase2.md.

“Technology connects us — but the heart gives it meaning.”
Phase 1 lays the ground where light and language will meet.
