import subprocess

def run_pipeline():
    subprocess.run(["python", "scripts/data_generation/generate_data.py"])
    subprocess.run(["python", "scripts/transformation/staging_to_production.py"])
    subprocess.run(["python", "scripts/quality_checks/validate_data.py"])

if __name__ == "__main__":
    run_pipeline()
