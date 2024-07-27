#!/bin/bash

# Repository name
REPO="alex5402/Vortex-thermal"

# Fetch the latest release information from the GitHub API using curl
RELEASE_INFO=$(curl -L -H "Accept: application/vnd.github+json" "https://api.github.com/repos/alex5402/Vortex-thermal/releases/latest")

# Extract the tarball URL
TAGNAME=$(echo "$RELEASE_INFO" | jq -r '.tag_name')


# Define the output file name
OUTPUT_FILE="latest-release.tar.gz"

# Use wget to download the tarball
echo "Downloading from $TARBALL_URL"
wget -O "$OUTPUT_FILE" "https://github.com/ALEX5402/Vortex-thermal/archive/refs/tags/$TAGNAME.tar.gz"

# Confirm completion
echo "Downloaded the tarball and saved it as $OUTPUT_FILE."
