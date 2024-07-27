#!/bin/bash

# Repository name
REPO="alex5402/Vortex-thermal"

# Fetch the latest release information from the GitHub API using curl
RELEASE_INFO=$(curl -L -H "Accept: application/vnd.github+json" "https://api.github.com/repos/$REPO/releases/latest")

# Extract the tarball URL
TARBALL_URL=$(echo "$RELEASE_INFO" | jq -r '.tarball_url')


# Check if TARBALL_URL is empty
if [ -z "$TARBALL_URL" ]; then
    echo "No tarball URL found in the latest release."
    exit 1
fi

# Define the output file name
OUTPUT_FILE="latest-release.tar.gz"

# Use wget to download the tarball
echo "Downloading from $TARBALL_URL"
wget -O "$OUTPUT_FILE" "$TARBALL_URL"

# Confirm completion
echo "Downloaded the tarball and saved it as $OUTPUT_FILE."
