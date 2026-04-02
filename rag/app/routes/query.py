from fastapi import APIRouter
from pydantic import BaseModel
from app.services.rag_pipeline import generate_answer

router = APIRouter()

class QueryRequest(BaseModel):
    question: str

@router.post("/query")
def query_rag(request: QueryRequest):
    answer = generate_answer(request.question)
    return {"answer": answer}