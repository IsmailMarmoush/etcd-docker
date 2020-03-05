#!/bin/bash
host=http://localhost:9001/v2

put() {
  k=$1
  v=$2
  curl $host/keys/"$k" -XPUT -d value="$v" | jq
}

get() {
  curl $host/keys$1?recursive=true | jq
}

delete() {
  curl "$host/keys"$1"?recursive=true" -XDELETE | jq
}

put_dir() {
  curl $host/keys"$1" -XPUT -d dir=true | jq
}

get_dir() {
  curl $host/keys"$1"?recursive=true | jq
}

delete_dir() {
  curl "$host/keys"$1"?dir=true&recursive=true" -XDELETE | jq
}

$@
