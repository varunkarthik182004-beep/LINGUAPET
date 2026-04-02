from fastapi import APIRouter, UploadFile
from app.utils.chunking import chunk_text
from app.services.embedding import get_embedding
from app.db.faiss_store import add_embeddings

router = APIRouter()

@router.post("/ingest")
async def ingest(file: UploadFile):
    content = await file.read()
    text = content.decode("utf-8")

    chunks = chunk_text(text)
    embeddings = [get_embedding(chunk) for chunk in chunks]

    add_embeddings(embeddings, chunks)

    return {"message": "Data ingested successfully"}