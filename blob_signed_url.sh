#!/bin/bash

echo -e "\n"

curl -m 70 -G --data-urlencode "gs_source_url=$1" https://us-central1-blob-signed-url-generator.cloudfunctions.net/blob-signed-url-generator -H "Authorization: bearer $(gcloud auth print-identity-token)" -H "Content-Type: application/json" -d '{}'

echo -e "\n"

