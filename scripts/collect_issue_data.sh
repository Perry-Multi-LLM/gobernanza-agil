#!/bin/bash

mkdir -p metrics

curl -H "Authorization: token $GITHUB_TOKEN" \
     -H "Accept: application/vnd.github+json" \
     https://api.github.com/repos/$GITHUB_REPOSITORY/issues?state=all \
     > metrics/issues.json
