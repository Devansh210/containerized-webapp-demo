#!/bin/bash

LATEST_TAG=\$(git describe --tags \$(git rev-list --tags --max-count=1))

git checkout \$LATEST_TAG

#Building and Running the container
bash build.sh
bash run.sh
