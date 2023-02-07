from fastapi import FastAPI
import openai

app = FastAPI()

@app.post("/text")
async def generate_text(text: str):
    openai.api_key = os.environ["OPENAI_API_KEY"]
    response = openai.Completion.create(
        engine="text-davinci-002",
        prompt=text,
        max_tokens=1024,
        n=1,
        stop=None,
        temperature=0.5,
    )
    return {"response": response["choices"][0]["text"]}
