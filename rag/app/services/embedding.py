def get_embedding(text: str):
    vec = [float(ord(c)) for c in text[:100]]

    if len(vec) < 100:
        vec += [0.0] * (100 - len(vec))

    return vec