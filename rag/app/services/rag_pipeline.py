from app.services.retriever import retrieve

def format_answer(context: str):
    lines = context.split("\n")

    definition = []
    examples = []
    wrong = []
    correct = []

    section = "definition"

    for line in lines:
        line = line.strip()

        if not line:
            continue

        if "Examples:" in line:
            section = "examples"
            continue
        elif "Wrong:" in line:
            section = "wrong"
            continue
        elif "Correct:" in line:
            section = "correct"
            continue

        if section == "definition":
            definition.append(line)
        elif section == "examples":
            examples.append(line)
        elif section == "wrong":
            wrong.append(line)
        elif section == "correct":
            correct.append(line)

    # Build clean output
    answer = "📘 Past Tense\n\n"

    if definition:
        answer += " ".join(definition) + "\n\n"

    if examples:
        answer += "✅ Examples:\n"
        for ex in examples:
            answer += f"• {ex}\n"
        answer += "\n"

    if wrong:
        answer += "❌ Incorrect:\n"
        for w in wrong:
            answer += f"• {w}\n"
        answer += "\n"

    if correct:
        answer += "✔ Correct:\n"
        for c in correct:
            answer += f"• {c}\n"

    return answer.strip()


def generate_answer(query: str):
    context_chunks = retrieve(query)
    context = "\n".join(list(set(context_chunks)))

    if "No data available" in context:
        return {
            "answer": "Please ingest data first before asking questions."
        }

    formatted = format_answer(context)

    return {
        "answer": formatted
    }