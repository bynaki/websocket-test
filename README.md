# Websocket Test

via wscat

### Building Docker Image

```shell
docker image build -t bynaki/wscat .
```

### Runing Docker

```shell
docker network create nat
docker container run -it --network nat --name wscat --env URL="wss://myurl" bynaki/wscat
```

`URL`은 같은 `nat` 네트워크에 있는 도커 컨테이너 이름을 사용할 수도 있다.

예:
> 도커 컨테이너 이름이 `euclid`라면
> `docker container run -it --network nat --name wscat --env URL="http://euclid" bynaki/wscat`