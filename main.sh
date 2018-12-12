#!/bin/bash
host=http://localhost:32770/v2

put(){
	curl $host/keys/"$1" -XPUT -d value="$2" | jq
}

get(){
	curl $host/keys/$1 | jq
}

$@
