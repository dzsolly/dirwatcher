#!/bin/bash

# Interactive Directory Inspector - sorted by size (largest first)

clear
echo "📁 Directory Inspector - RHEL 8.x Compatible"
echo "-------------------------------------------"

# Prompt for target directory
read -rp "Enter the path of the directory to inspect: " TARGET_DIR

# Validate input
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "❌ The specified path does not exist or is not a directory."
    exit 1
fi

echo -e "\n🔍 Listing contents of: $TARGET_DIR (sorted by size)\n"

# List contents sorted by size (largest first)
du -sh "$TARGET_DIR"/* 2>/dev/null | sort -hr

# Summary: total size
echo -e "\n📊 Total size of directory:"
du -sh "$TARGET_DIR"

# Summary: number of files
echo -e "\n📦 Number of files:"
find "$TARGET_DIR" -type f | wc -l

# Summary: number of directories
echo -e "\n📂 Number of directories:"
find "$TARGET_DIR" -type d | wc -l
