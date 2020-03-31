# Composure

a demo


## Docker

### docker-compose.yml

#### Services

`services: web`:

The `web` service uses an image that is build from the Dockerfile in the current directory.
It then binds the container and the host machine to the exposed port, 5000.


`services: redis`:

The `redis` service uses a public Redis image pulled from the Docker Hub registry


## Running

`docker-compose up`
