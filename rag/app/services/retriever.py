from app.services.embedding import get_embedding
from app.db.faiss_store import search

def retrieve(query: str):
    query_embedding = get_embedding(query)
    results = search(query_embedding)
    return results