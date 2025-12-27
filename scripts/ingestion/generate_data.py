import pandas as pd
from faker import Faker
import random

fake = Faker()

# ---------------- CUSTOMERS ----------------
customers = []
for i in range(1, 1001):
    customers.append({
        "customer_id": i,
        "first_name": fake.first_name(),
        "last_name": fake.last_name(),
        "email": fake.unique.email()
    })

customers_df = pd.DataFrame(customers)
customers_df.to_csv("data/raw/customers.csv", index=False)

# ---------------- PRODUCTS ----------------
products = []
for i in range(1, 501):
    products.append({
        "product_id": i,
        "product_name": fake.word().capitalize(),
        "price": round(random.uniform(5, 500), 2)
    })

products_df = pd.DataFrame(products)
products_df.to_csv("data/raw/products.csv", index=False)

# ---------------- TRANSACTIONS ----------------
transactions = []
for i in range(1, 10001):
    transactions.append({
        "transaction_id": i,
        "customer_id": random.randint(1, 1000),
        "transaction_date": fake.date_between(start_date="-1y", end_date="today"),
        "payment_method": random.choice(["Credit Card", "Debit Card", "UPI", "Net Banking", "Cash"])
    })

transactions_df = pd.DataFrame(transactions)
transactions_df.to_csv("data/raw/transactions.csv", index=False)

# ---------------- TRANSACTION ITEMS ----------------
transaction_items = []
item_id = 1
for t_id in range(1, 10001):
    for _ in range(random.randint(1, 3)):
        qty = random.randint(1, 5)
        price = round(random.uniform(5, 500), 2)
        transaction_items.append({
            "transaction_item_id": item_id,
            "transaction_id": t_id,
            "product_id": random.randint(1, 500),
            "quantity": qty,
            "unit_price": price,
            "line_total": round(qty * price, 2)
        })
        item_id += 1

items_df = pd.DataFrame(transaction_items)
items_df.to_csv("data/raw/transaction_items.csv", index=False)

print("✅ CSV files generated successfully in data/raw/")
