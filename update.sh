#!/usr/bin/env bash
set -e

CURRENT_ELM_VERSION=$(jq .version elm.json)

# Clean current repo

rm -r src || true

# Copy Elm package to root

cp -R spor/packages/spor-elm/ .
jq --indent 4 ".version = $CURRENT_ELM_VERSION" elm.json > elm2.json
mv elm2.json elm.json

