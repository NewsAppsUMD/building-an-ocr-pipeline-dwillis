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
    # Define the base path for the output (without .txt extension, as Tesseract adds it)
    output_base="$text_directory/$filename"
    # Use Tesseract to convert the image to text and save it
    tesseract "$image_file" "$output_base"
done

echo "OCR processing complete."
