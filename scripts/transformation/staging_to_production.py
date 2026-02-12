from sqlalchemy import create_engine
import os
from dotenv import load_dotenv

load_dotenv()

engine = create_engine(
    f"postgresql://{os.getenv('POSTGRES_USER')}:{os.getenv('POSTGRES_PASSWORD')}"
    f"@{os.getenv('POSTGRES_HOST')}:{os.getenv('POSTGRES_PORT')}/{os.getenv('POSTGRES_DB')}"
)

def transform():
    with engine.begin() as conn:
        conn.execute("""
            INSERT INTO production.customers
            SELECT DISTINCT * FROM staging.customers;
        """)
    print("Staging to production transformation complete.")

if __name__ == "__main__":
    transform()
