scriptName=$0
fileLoc=$1
contentStr=$2

if [ -z "$fileLoc" ] || [ -z "$contentStr" ]; then
    echo "Usage: $scriptName <files-location> <content-string>"
    exit 1
fi

#extract filename from fileLoc
fileName=$(basename "$fileLoc")

#exteract directory from fileLoc
fileLoc=$(dirname "$fileLoc")

#if location does not exist, create it
if [ ! -d "$fileLoc" ]; then
    
    mkdir -p "$fileLoc"
fi

cd "$fileLoc"


# create the file with the given content
echo "$contentStr" > "$fileName"