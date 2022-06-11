#!/usr/bin/env bash
set -e
set -x

NAME=$1
if [[ -z $NAME ]]; then
  echo "Please provide a name."
fi

URL=$2
if [[ -z $URL ]]; then
  echo "Please provide an url of the archive .tar.gz."
fi

file="$NAME.tar.gz"
curl -L "$URL" --output "$file"
mkdir "$NAME"
tar -xzvf "$file" --strip-components=1 -C "$NAME"
rm "$file"
