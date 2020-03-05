#!/bin/bash
host=http://localhost:9001

version() {
  curl --silent $host/version | jq
}

put() {
  k=$(echo $1 | base64)
  v=$(echo $2 | base64)
  curl --silent -L $host/v3/kv/put -X POST -d "{\"key\": \"${k}\", \"value\": \"${v}\" }" | jq
}

get() {
  key=$(echo $1 | base64)
  value=$(curl --silent -L http://localhost:9001/v3/kv/range -X POST -d "{\"key\": \"${key}\"}" | jq .kvs[0].value)
  echo "${value//\"}" | base64 --decode
}

$@
