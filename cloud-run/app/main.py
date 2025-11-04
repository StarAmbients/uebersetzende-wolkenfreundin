from fastapi import FastAPI

app = FastAPI(title="Wolkenfreundin Translator")

@app.get("/healthz")
def healthz():
    return {"ok": True}

@app.post("/translate-file")
def translate_file(payload: dict):
    # TODO: download from GCS, call translators, build DOCX
    return {"status": "accepted", "payload": payload}
