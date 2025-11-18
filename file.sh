#!/bin/bash
# Purpose: Download a file from the internet and save it to a specified location
# Author: Prachi
# Date: 18/11/2025
# Usage: ./download_file.sh <url> <destination>

# Check if both arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <url> <destination>"
  exit 1
fi

# Assign arguments to variables
url=$1
destination=$2

# Download file using wget
wget -O "$destination" "$url"

# Check if download was successful
if [ $? -eq 0 ]; then
  echo "File downloaded successfully to '$destination'"
else
  echo "Error: Failed to download file from '$url'"
fi
