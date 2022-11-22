#!/usr/bin/env bash

echo "Starting brew installation..."
for pkg in $(cat brew-packages.txt)
do
    $(brew install $pkg);
    echo "Installed --------- [$pkg]"
done

echo "Finished installing brew packages!"
