#!/bin/bash
# delete_dtrix.sh - Deletes the Dtrix directory

DTRIX_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "This script will delete the Dtrix directory and all its contents."
read -p "Are you sure you want to proceed? (y/n): " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    echo "Deleting Dtrix directory..."
    rm -rf "$DTRIX_DIR"
    echo "Dtrix directory has been deleted."
else
    echo "Deletion cancelled."
fi
