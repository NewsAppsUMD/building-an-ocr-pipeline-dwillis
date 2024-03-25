#!/bin/bash

# Define the CSV file
csv_file="alerts.csv"

# Create the directory to store the PDFs if it doesn't exist
mkdir -p pdfs

# Extract URLs from the CSV file and download each PDF if it doesn't already exist
csvcut -c url "$csv_file" | tail -n +2 | while IFS= read -r url; do
    filename=$(basename "$url")
    if [ ! -f "pdfs/$filename" ]; then
        wget -P pdfs "$url"
    else
        echo "File $filename already exists. Skipping download."
    fi
done
