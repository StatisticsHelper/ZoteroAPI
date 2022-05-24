#!/usr/bin/env bash

# Claire's statistics helper library, and API key generated from my account.
URL="https://api.zotero.org/groups/2547147/items"
API_KEY="PUT_YOUR_ACCESS_KEY_HERE"

curl -H "Zotero-API-Key: $API_KEY" $URL > items.json

