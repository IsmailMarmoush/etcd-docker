#!/bin/bash
host=http://localhost:9001

version() {
  curl $host/version
}

put() {
  k=$1
  v=$2
  curl $host/"$k" -XPUT -d value="$v" | jq
}

get() {
  curl $host/"$1"?recursive=true | jq
}

delete() {
  curl $host/"$1"?recursive=true -XDELETE | jq
}

put_dir() {
  curl $host/"$1" -XPUT -d dir=true | jq
}

get_dir() {
  curl $host/"$1"?recursive=true | jq
}

delete_dir() {
  curl $host/"$1"?dir=true &
  recursive=true -XDELETE | jq
}

$@
