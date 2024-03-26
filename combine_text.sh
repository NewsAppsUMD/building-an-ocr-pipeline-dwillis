#!/bin/bash

# Define the directory containing the .txt files
txt_directory="text"
# Define the directory where the combined files will be saved
combined_directory="combined_text"

# Create the combined directory if it doesn't exist
mkdir -p "$combined_directory"

# Loop through all .txt files and extract unique base names
for file in "$txt_directory"/*.txt; do
    # Extract the base name by cutting the file name on underscore and taking the first part
    base_name=$(basename "$file" | cut -d '_' -f 1)
    
    # Define the output file path for the combined files
    output_file="${combined_directory}/${base_name}.txt"
    
    # Check if the combined file already exists to avoid re-combining
    if [ ! -f "$output_file" ]; then
        # Combine files with the same base name. Redirect/append content to the new file in combined_directory
        cat "${txt_directory}/${base_name}"_*.txt > "$output_file"
        
        echo "Combined files into $output_file"
    fi
done

echo "All files combined."
