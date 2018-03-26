#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "question": {
      "text": "'"${TEXT}"'",
      "_survey_id": "'"${ID}"'"
    }
  }'

echo
