#!/bin/bash

# Define the CSV file
csv_file="alerts.csv"

# Create the directory to store the PDFs if it doesn't exist
mkdir -p pdfs

# Extract URLs from the CSV file and download each PDF
csvcut -c url "$csv_file" | tail -n +2 | while IFS= read -r url; do
    wget -P pdfs "$url"
done
