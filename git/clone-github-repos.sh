#! /usr/bin/env bash

# Clone all personal public repos to ~/src/github.com/swade1987
for repo in $(curl -s https://api.github.com/users/swade1987/repos | jq -r .[].name)
do
    if [ -e ~/src/github.com/swade1987/$repo ]; then
        echo Already cloned $repo
    else
        go get github.com/swade1987/$repo
    fi
done