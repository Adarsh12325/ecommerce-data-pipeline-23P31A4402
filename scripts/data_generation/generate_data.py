import pandas as pd
import numpy as np

def generate_customers(n=1000):
    df = pd.DataFrame({
        "customer_id": range(1, n+1),
        "customer_name": [f"Customer_{i}" for i in range(1, n+1)]
    })
    df.to_csv("data/raw/customers.csv", index=False)

if __name__ == "__main__":
    generate_customers()
    print("Data generated.")
