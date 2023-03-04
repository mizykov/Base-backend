from fastapi import FastAPI


app = FastAPI()


@app.get("/")
def read_root():
    return {"IT'S NOT OVER": "UNTIL YOU WIN"}
