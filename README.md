# ☁️ Übersetzende Wolkenfreundin -- *The Cloud Translator Friend*

### **AI in Service of Light**

> *Applied AI Scientist building humane machine intelligence.*

------------------------------------------------------------------------

## 🌤 Project Overview

**Übersetzende Wolkenfreundin** ("The Translating Cloud Friend") is an
AI-assisted, human-verified translation pipeline designed on **Google
Cloud Platform (GCP)**.\
It enables multilingual publishing for the **Bruno Gröning Circle of
Friends**, delivering high-quality, context-aware translations from
**German → Portuguese (Brazil)** while preserving tone, glossary
consistency, and spiritual integrity.

**Status:** ✅ *Phase 1 complete* --- infrastructure configuration,
knowledge-base preview, and OK/KO search validation using Vertex AI
Search.

------------------------------------------------------------------------

## 🪄 Project Phases Overview

  --------------------------------------------------------------------------------------------------
  Phase           Focus            Documentation                                      Status
  --------------- ---------------- -------------------------------------------------- --------------
  ☁ **Phase 1 --  Google Cloud     📘 [Phase 1                                        🟢 Complete /
  Environment     configuration,   README](./docs/phase1/README_Phase1_final.md)      🟡 In Progress
  Setup &         IAM, budgets,                                                       
  Foundations**   and translation                                                     
                  key setup                                                           
                  (DeepL +                                                            
                  Microsoft                                                           
                  Translator).                                                        

  📚 **Phase 2 -- Creation of the  📘 [Phase 2                                        🟡 In Progress
  Knowledge Base  contextual       README](./docs/phase2/README_Phase2_template.md)   
  (RAG)**         knowledge                                                           
                  repository and                                                      
                  glossary                                                            
                  integration for                                                     
                  improved                                                            
                  translation                                                         
                  accuracy.                                                           

  💬 **Phase 3 -- Automated        📘 [Phase 3                                        ⏳ Upcoming
  Translation     translation      README](./docs/phase3/README_Phase3_template.md)   
  Pipeline        workflow                                                            
  (MVP)**         integrating                                                         
                  DeepL, Microsoft                                                    
                  Translator, and                                                     
                  Gemini AI for                                                       
                  post-editing.                                                       

  ⚙️ **Phase      Verification →   📘 [Project Phase                                  🔵 Planned
  4--8**          Review →         Overview](./docs/Project_Phase_Overview.md)        
                  Governance →                                                        
                  Multilingual                                                        
                  Expansion →                                                         
                  Launch                                                              
  --------------------------------------------------------------------------------------------------

> Each phase README includes 🎯 Objectives · 🧩 Components · ⚙️ Setup
> Steps · ✅ Checklist · 🔜 Next Steps.\
> "Technology connects us --- but documentation keeps us aligned." ✨

------------------------------------------------------------------------

## 🧠 System Architecture

-   **Vertex AI Search (RAG)** --- contextual retrieval from
    organization's corpus\
-   **Cloud Run / FastAPI** --- translation orchestration microservice\
-   **DeepL & Microsoft Translator** --- machine translation engines\
-   **Gemini / Vertex AI** --- post-editing and semantic fidelity
    analysis\
-   **python-docx** --- generates reviewer-friendly bilingual documents\
-   **BigQuery + Looker Studio** --- logging, QA metrics, and dashboards

📘 See [`docs/architecture.md`](docs/architecture.md) for complete
design and data flow.

------------------------------------------------------------------------

## ⚡ Quick Start

``` bash
# Clone the repository
git clone https://github.com/yourusername/uebersetzende-wolkenfreundin.git
cd uebersetzende-wolkenfreundin

# Explore documentation
open docs/Project_Phase_Overview.md
```

------------------------------------------------------------------------

## 🚀 Responsibilities & Leadership

As **Applied AI Scientist / Engineer & Tech Lead**, I designed and
documented the foundation of a **human-in-the-loop AI translation
system** combining cloud engineering and computational linguistics.

Key contributions:\
- 🧭 End-to-end architecture on Google Cloud (Vertex AI Search, Cloud
Run, GCS)\
- 🧪 Rigorous QA and OK/KO testing methodology\
- ⚙️ Automation for daily development and reporting\
- 🛡 Governance & standards for version control and CI/CD\
- 📘 Comprehensive technical documentation

My leadership approach blends **academic rigor with industrial clarity**
--- making complex AI workflows transparent, testable, and maintainable.

------------------------------------------------------------------------

## 👩‍🔬 About the Author

**Débora Schuch da Rosa**\
*Applied AI Scientist / Engineer & Tech Lead*\
📧 <phddebora@gmail.com>

Ph.D. in Computer Science \| Research experience: **University of Trento
(Italy)**, **Max Planck Institute (Germany)**, **CNRS/LIP6 (France)**.

Expertise in applied mathematics, AI engineering, and computational
linguistics --- designing robust, reproducible AI pipelines that serve
meaningful human goals.

------------------------------------------------------------------------

## 🧭 Recruiter Tour --- Explore the Work

  --------------------------------------------------------------------------------------------------
  Focus Area               Reference                                        Description
  ------------------------ ------------------------------------------------ ------------------------
  **Architecture &         [`docs/architecture.md`](docs/architecture.md)   End-to-end data and
  Design**                                                                  service design on GCP

  **Quality & Testing**    [`docs/qa-methods.md`](docs/qa-methods.md)       OK/KO search validation
                                                                            and translation QA

  **Engineering Practice** [`cloud-run/app/`](cloud-run/app/) +             Cloud Run FastAPI
                           [`scripts/`](scripts/)                           service and automation
                                                                            scripts

  **Governance & Ethics**  [`docs/governance.md`](docs/governance.md)       Logging, budgets, and
                                                                            Responsible-AI standards

  **Collaboration Model**  [`CONTRIBUTING.md`](CONTRIBUTING.md) +           Contribution flow, CI,
                           `.github/`                                       and review process
  --------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

## 🕊 Vision

To lead AI initiatives that combine **mathematical depth**,
**engineering precision**, and **human values** --- building
computational systems that are **robust, transparent, and uplifting** to
those who create and use them.
