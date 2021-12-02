#!/bin/bash

# This script removes some unnnecessary files from the data folders. These useless files get created by the Spark job that exports the data.
# Furthermore, the script simplifies the names of the part-xxxxx files.

# Update the CSV file names
for path in $(find . -name "part-*-tid-*.csv")
do
    newPath=$(echo "$path" | sed -rn 's/(.+)-tid-.+\.csv/\1.csv/p')

    echo "Moving $path to $newPath..."
    mv "$path" "$newPath"
done

# Remove all meta files
for path in $(find . \( -name "_SUCCESS" -o -name "_started_*" -o -name "_committed_*" \))
do
    echo "Removing $path..."
    rm "$path"
done
