from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Python Application running successfully in Docker!"}

@app.get("/health")
def health_check():
    return {"status": "UP"}

@app.get("/calculate")
def calculate(a: int, b: int):
    result = a + b
    return {
        "a": a,
        "b": b,
        "operation": "addition",
        "result": result
    }
