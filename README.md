# nginx-docker

## A simple Dockerfile to create a nginx reverse proxy docker container

This is a simple Dockerfile and a couple of shell scripts to create a Docker
container with a nginx server working as a reverse proxy.

The idea is to have subdomains mapping to your localhost ports.

## Usage

```shell
cp .config-sample .config
nano .config
# fill in your subdomains and ports
source .config
```
