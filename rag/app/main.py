from fastapi import FastAPI
from app.routes import query, ingest

app = FastAPI()

app.include_router(query.router, prefix="/rag")
app.include_router(ingest.router, prefix="/rag")

@app.get("/")
def root():
    return {"message": "Linguapet RAG Service Running"}