#!/bin/bash

echo "Setting up Ecommerce Data Pipeline..."

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Create necessary directories
mkdir -p logs
mkdir -p data/raw
mkdir -p data/processed
mkdir -p reports

echo "Setup complete."
