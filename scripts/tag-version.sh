 #!/bin/bash
export TERM=xterm

cd nginx-pipeline


VERSION=$(git tag -l --sort -version:refname | head -n 1)
if [ "$VERSION" = "" ]; then
    echo 'Hello Knecht!'
fi
VERSION_MAJOR=$(echo $VERSION | cut -d '.' -f1)
VERSION_MINOR=$(echo $VERSION | cut -d '.' -f2)
# Grab all version tags of the HEAD commit and return the highest one
CURRENT_TAG=$(git tag -l --sort -version:refname --points-at HEAD | head -n 1)

# If the current commit is not tagged with the 
if [ "$VERSION" != "$CURRENT_TAG" ]; then
    let "VERSION_MINOR+=1"
    fi
echo "$VERSION_MAJOR.$VERSION_MINOR" > version-tag/version
