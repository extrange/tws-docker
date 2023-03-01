# TWS in Docker

![](screenshot.jpg)

## Getting Started

```
git clone https://github.com/extrange/tws-docker
cd tws-docker
docker build -t tws-docker-tws --ulimit nofile=10000 .
docker compose up
```

View the WebUI at [`localhost:6080`](http://localhost:6080).