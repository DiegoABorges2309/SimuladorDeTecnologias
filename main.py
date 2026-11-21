from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"msg":"holaaaa estrellitas"}, 202