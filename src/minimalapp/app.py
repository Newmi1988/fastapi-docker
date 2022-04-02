from fastapi import FastAPI

import minimalapp

app = FastAPI()

@app.get("/")
async def root():
    return {
        "version" : "0.1.0"
    }
