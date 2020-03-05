# Etcd - distributed key-value store

### Prerequisites

- Docker-CE 18.06+
- Docker Compose v1.23.1+


### Docker Usage

    $ docker-compose up -d

    $ docker exec -it etcd1 etcdctl set secret password

    $ docker exec -it etcd1 etcdctl get /secret


### REST Request usage
```bash

./main.sh put_dir "/myapplication"
./main.sh put_dir "/myapplication/service1"
./main.sh put_dir "/myapplication/service2"

./main.sh put "/myapplication/service1/mykey1" value1
./main.sh put "/myapplication/service2/mykey2" value2

./main.sh get

```

### Docker Images

- [etcd v3.1.x][docker-image-etcd]

[docker-image-etcd]: https://quay.io/repository/coreos/etcd
