#!/bin/bash

# Check if there are at least two arguments provided
if [ "$#" -ne 1 ]; then
    echo "You must enter exactly 1 arguments:\n\t version (e.g., 0.0.1)";
    exit 1;
fi

# Check if the second argument is a valid version string
# If not, print an error message and exit the script
if ! echo "$1" | grep -qE '^[0-9]+\.[0-9]+\.[0-9]+$'; then
    echo "The second argument must be a valid version string (e.g., 0.0.1)";
    exit 1;
fi

echo "$1";
echo "$2";

git pull https://github.com/cjsmocjsmo/mtv-svelte2.0.git;

# If all checks pass, print the arguments

count1=$(echo "$1" | sed 's/\.//g' )
count=$((count1+1-1))
minusone=$((count-1))

echo "Version: $1";
echo "mtvsvelte:$1";
echo "mtvsvelte$count";
echo "mtvsvelte$minusone";

if [ "$minusone" -eq 0 ]; then
    
    npm install;

    npm run build;

    docker build -t mtvsvelte:$1 .;
    
    docker run --name mtvsvelte1 -d -p 8090:8090 mtvsvelte:$1;

    exit 0;
fi

if [ "$minusone" -eq 1 ]; then
    # Build the Docker image

    docker stop mtvsvelte1;

    docker rm mtvsvelte1;

    npm install;

    npm run build;

    docker build -t mtvsvelte:$1 .;

    docker run --name mtvsvelte$count -d -p 8090:8090 mtvsvelte:$1;

    exit 0;
fi


if [ "$minusone" -gt 1 ]; then
    # Build the Docker image

    docker stop mtvsvelte$minusone;

    docker rm mtvsvelte$minusone;

    npm install;

    npm run build;

    docker build -t mtvsvelte:$1 .;

    docker run --name mtvsvelte$count -d -p 8090:8090 mtvsvelte:$1;

    exit 0;
fi