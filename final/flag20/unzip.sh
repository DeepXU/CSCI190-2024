#!/bin/bash

# Function to decompress a .rar file
decompress_rar() {
    echo "Decompressing RAR file: $1"
    unrar x "$1" .extracted_files/

}

# Function to decompress a .tar.gz file
decompress_tar_gz() {
    echo "Decompressing TAR.GZ file: Fill-In"
    # TODO: Fill in the command to decompress a .tar.gz file to the .extracted_files directory
    tar -xzf "Fill-In" -C Fill-In
}

# Function to decompress a .zip file
decompress_zip() {
    echo "Decompressing ZIP file: $1"
    # TODO: Fill in the command to decompress a .zip file to the .extracted_files directory
    unzip -q "Fill-In" -d Fill-In
}

# Function to search for "flag" in the files inside the .extracted_files directory
search_for_flag() {
    echo "Searching for 'flag' in decompressed files..."
    # TODO: Fill in the command to recursively search for the word "flag" in the .extracted_files directory
    Fill-In #(Hint: use regular expression command to search for word "flag")
}

# Main function to process all files in the current directory
process_all_files() {
    # Create the .extracted_files directory to store decompressed files
    mkdir -p .extracted_files

    # Loop through all compressed files in the current directory
    for file in *.rar *Fill-In *Fill-In; do
        # Skip if no matching files are found
        if [ ! -e "$file" ]; Fill-In
            continue
        fi

        # Determine the file type and decompress accordingly
        case "$file" in
            *.rar)
                decompress_rar "$file"
                ;;
            Fill-In)
                # TODO: Call the function to decompress .tar.gz files
		Fill-In
                ;;
            Fill-In)
                # TODO: Call the function to decompress .zip files
		Fill-In
                ;;
            *)
                echo "Unsupported file format: $file"
                continue
                ;;
        esac

        # Search for 'flag' in the decompressed files
        # TODO: Call the function to search for "flag"
	Fill-In
    done

    # Clean up by removing the .extracted_files directory and its contents
    rm -rf .extracted_files
}

# Execute the main function to process all files
process_all_files
