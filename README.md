# fake-smtp-server

This project is obsolete. Use [reachfive/fake-smtp-server](https://hub.docker.com/r/reachfive/fake-smtp-server) instead.

Creates a Docker image of [fake-smtp-server](https://github.com/ReachFive/fake-smtp-server).

## Usage

To build the latest image:
```
git clone https://github.com/hum-ler/fake-smtp-server.git
cd fake-smtp-server
docker build -t fake-smtp-server .
```

To push the latest image to registry:
```
docker login docker.pkg.github.com
docker tag fake-smtp-server docker.pkg.github.com/hum-ler/fake-smtp-server/fake-smtp-server
docker push docker.pkg.github.com/hum-ler/fake-smtp-server/fake-smtp-server
```

To run the container:
```
docker login docker.pkg.github.com
docker pull docker.pkg.github.com/hum.ler/fake-smtp-server/fake-smtp-server
docker run -d -p 1025:1025 -p 1080:1080 docker.pkg.github.com/hum.ler/fake-smtp-server/fake-smtp-server
```

This uses the default ports for the SMTP (1025) and HTTP (1080) services. To change the ports, you can map the port to another one on the host:
```
docker run -d -p 25:1025 -p 80:1080 registry.gitlab.com/hum.ler/fake-smtp-server:latest
```

Or if you are using your own network, try appending the appropriate parameters to the fake-smtp-server command:
```
docker network create my-bridge
docker run -d --net my-bridge registry.gitlab.com/hum.ler/fake-smtp-server:latest --smtp-port 25 --http-port 80
```
