from typing import List
from fastapi import FastAPI
from pydantic import BaseModel

class Item(BaseModel):
    name: str
    price: float

app = FastAPI()

@app.get("/items", response_model=List[Item])
async def get_items():
    items = [
        Item(name="Item 1", price=10.99),
        Item(name="Item 2", price=20.50),
        Item(name="Item 3", price=5.99)
    ]
    return items
