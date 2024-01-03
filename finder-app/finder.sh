scriptName=$0
filesDir=$1
searchStr=$2

if [ -z "$filesDir" ] || [ -z "$searchStr" ]; then
    echo "Usage: $scriptName <files-dir> <search-string>"
    exit 1
fi

if [ ! -d "$filesDir" ]; then
    echo "Error: $filesDir is not a directory"
    exit 1
fi

# Prints a message "The number of files are X and the number of matching lines are Y" where X is the number of files in the directory and all subdirectories and Y is the number of matching lines found in respective files, where a matching line refers to a line which contains searchstr (and may also contain additional content)
lineCount=$(grep -r $2 $1 | wc -l)
#count number of files in directory
fileCount=$(find $1 -type f | wc -l)


#fileCount=$(grep -rl $2 $1 | wc -l)
echo "The number of files are $fileCount and the number of matching lines are $lineCount"