#!/bin/bash

# gfs team. 1993-2023 30 years of glory, building and re buidling... the Universe. 
# This our way... because...
# LONG LIVE SLACKWARE

OUTPUT_FILE="BUILDS.TXT"

> "$OUTPUT_FILE"

date +"%H:%M:%S %d-%m-%y" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

process_build_script() {
    local build_script="$1"
    
    PRGNAM=$(awk -F= '/^PRGNAM=/{print $2}' "$build_script")
    VERSION=$(awk -F= '/^VERSION=/{print $2}' "$build_script")
    BUILD=$(awk -F= '/^BUILD=/{print $2}' "$build_script")
    TAG=$(awk -F= '/^TAG=/{print $2}' "$build_script")
    PKGTYPE=$(awk -F= '/^PKGTYPE=/{print $2}' "$build_script")
    DEPON="$(cat "$directory"/dependees-on | tr '\n' ' ')"
   

    echo "PRGNAM: $PRGNAM" >> "$OUTPUT_FILE"
    echo "VERSION: $VERSION" >> "$OUTPUT_FILE"
    echo "BUILD: $BUILD" >> "$OUTPUT_FILE"
    echo "TAG: $TAG" >> "$OUTPUT_FILE"
    echo "PKGTYPE: $PKGTYPE" >> "$OUTPUT_FILE"
    echo "$PRGNAM"-DEPON: "$DEPON" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE" 
    
    
}

process_directory() {
    local directory="$1"
    local indent="$2"
    
    echo "${indent}Directory: $directory" >> "$OUTPUT_FILE"
    
    for slackbuild_file in "$directory"/*.SlackBuild; do
        if [[ -f $slackbuild_file ]]; then
            process_build_script "$slackbuild_file"
            fi
  done  
    
    echo "INFO:" >> "$OUTPUT_FILE"
    cat "$directory/$PRGNAM.info" >> "$OUTPUT_FILE"
    echo " " >> "$OUTPUT_FILE"
    
    
    for subdir in "$directory"/*; do
        if [[ -d $subdir ]]; then
            process_directory "$subdir" "$indent  "
        fi
    done
}

process_directory "." ""

echo "BUILDS.TXT file created successfully."
