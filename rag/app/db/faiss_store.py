import faiss
import numpy as np

dimension = 100  # for MiniLM model
index = faiss.IndexFlatL2(dimension)

stored_chunks = []

def add_embeddings(embeddings, chunks):
    global stored_chunks

    embeddings = np.array(embeddings).astype("float32")
    index.add(embeddings)
    stored_chunks.extend(chunks)

def search(query_embedding, k=3):
    if len(stored_chunks) == 0:
        return ["No data available. Please ingest data first."]

    query_embedding = np.array([query_embedding]).astype("float32")
    distances, indices = index.search(query_embedding, k)

    results = []
    for i in indices[0]:
        if i < len(stored_chunks):
            results.append(stored_chunks[i])

    return results