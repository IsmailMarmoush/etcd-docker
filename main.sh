#!/bin/bash
host=http://localhost:32770/v2

put(){
	curl $host/keys"$1" -XPUT -d value="$2" | jq
}


get(){
	curl $host/keys$1 | jq
}

delete(){
  curl "$host/keys"$1"?recursive=true" -XDELETE | jq
}

put_dir(){
  curl $host/keys"$1" -XPUT -d dir=true | jq
}

get_dir(){
  curl  $host/keys"$1"?recursive=true | jq
}

delete_dir(){
  curl "$host/keys"$1"?dir=true&recursive=true" -XDELETE | jq
}

$@
