# Jamulus (headless) Docker image based on Debian

Build the image

```sh
docker build -t jamulus-headless github.com/passing/jamulus-docker
```

Run jamulus server

```sh
docker run -ti -p 22124:22124/udp jamulus-headless --server
```
