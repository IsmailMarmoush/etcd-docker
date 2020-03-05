# Etcd - distributed key-value store
## Run
```bash
docker-compose up -d
```

## REST Request usage
```bash
./main.sh put mykey1 value1
./main.sh get mykey1
```

## Etcd Image
* [docker-image-etcd](https://quay.io/repository/coreos/etcd)

## References
* https://github.com/etcd-io/etcd/blob/master/Documentation/dev-guide/api_grpc_gateway.md