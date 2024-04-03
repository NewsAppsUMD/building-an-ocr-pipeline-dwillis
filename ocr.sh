#!/bin/bash

# Define the directory containing the images
images_directory="images"
# Define the directory where the text files will be saved
text_directory="text"

# Create the text directory if it doesn't exist
mkdir -p "$text_directory"

# Loop through each .png file in the images directory
for image_file in "$images_directory"/*.png; do
    # Extract the filename without the extension
    filename=$(basename "$image_file" .png)
    # Define the base path for the output (Tesseract adds .txt extension automatically)
    output_base="$text_directory/$filename"
    # Define the full path of the expected text file (for checking existence)
    output_text_file="${output_base}.txt"
    # Check if the text file already exists
    if [ ! -f "$output_text_file" ]; then
        # The text file doesn't exist, so run Tesseract OCR on the image
        echo "Processing: $filename"
        tesseract "$image_file" "$output_base"
    else
        # The text file exists, skip OCR for this image
        echo "Already processed: $filename, skipping."
    fi
done