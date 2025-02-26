#!/usr/bin/env bash

set -euo pipefail

OWNER=viperproject

source vars
BODY=$(</dev/stdin)
curl -H "Authorization: Token $GITHUB_API_TOKEN" -XPOST -d "{\"body\": \"$BODY\"}" \
    "https://api.github.com/repos/$OWNER/prusti-dev/issues/$1/comments"
