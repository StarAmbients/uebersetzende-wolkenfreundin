# Architecture

**Components**
- Google Cloud Storage (ingest)
- Pub/Sub (events)
- Cloud Run (translation service)
- Vertex AI Search (RAG context/glossary)
- Gemini (post‑edit & tone)
- BigQuery (metrics/telemetry)

**High‑level Flow**
1. Upload DE docs to GCS → event
2. Fetch glossary/context from Vertex AI Search
3. Translate via providers (DeepL/MS)
4. Post‑edit with Gemini; build DOCX
5. Deliver to reviewers; log metrics
