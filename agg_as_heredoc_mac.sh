export AGG_SCRIPT_FOLDER_PATH="."  # Default to current directory. Modify this value if needed.

bash <<EOF
aggregated_content=""

# Using the find command to get all files in the specified directory
while IFS= read -r file; do
    # Check if the file is a text file and printable
    if file "\$file" | grep -q "text"; then
        content=\$(cat "\$file")
        aggregated_content+="\$file:\n======\n\$content\n\n"
    fi
done < <(find "\$AGG_SCRIPT_FOLDER_PATH" -type f)

# Copy the content to the clipboard using pbcopy
echo -e "\$aggregated_content" | pbcopy

# Since pbcopy doesn't have an equivalent way to read from the clipboard like xsel, we use pbpaste
echo "copied \$(pbpaste | wc -c) bytes, \$(pbpaste | wc -m) characters"
EOF
