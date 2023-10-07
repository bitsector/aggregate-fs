agg() {
    folder_path="${1:-.}"  # Default to current directory if no argument provided
    aggregated_content=""

    # Using the find command to get all files in the specified directory
    while IFS= read -r file; do
        # Check if the file is a text file and printable
        if file "$file" | grep -q "text"; then
            content=$(cat "$file")
            aggregated_content+="$file:\n======\n$content\n\n"
        fi
    done < <(find "$folder_path" -type f)

    # Copy the content to the clipboard using pbcopy
    echo -e "$aggregated_content" | pbcopy

    # Since pbcopy doesn't have an equivalent way to read from the clipboard like xsel, we use pbpaste
    echo "copied $(pbpaste | wc -c) bytes, $(pbpaste | wc -m) characters"
}
