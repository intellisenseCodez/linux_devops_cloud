
# Docker Images, Container & Dockerfile

Docker Images are made up of **multiple layers** that are stacked on top of each other and represented as a single object. These are the read-only template that is used to create a Docker container. Because containers are intended to be fast and lightweight, images tend to be small. 

The official Alpine Linux image is about 5MB in size and official Ubuntu image is of 40MB.

These images are very similar to the VM image, but there is some difference between them:

- VM image is used to create VM machine and Docker images are used to create Docker containers.
- VM image is big in size while Docker images are lightweight.

This Dockerfile contains multiple sets of commands, each of them is used to create a layer. Each layer is only a set of differences from the layer before it. The layers are stacked on top of each other.

## Dockerfile
A Dockerfile is a document file that contains collections of commands that will be executed in the docker environment for building a new docker image. This file is written in **YAML Language**. These images consist of read-only layers each of which represents a Dockerfile instruction. It is a more systematic, flexible and efficient way to build a Docker image.
To know more about DockerFile, [click here](https://docs.docker.com/engine/reference/builder/).

## Building Images from Dockerfiles

Start by creating a new folder and file for this example:

```bash
mkdir cowsay
cd cowsay
touch Dockerfile
```
And insert the following contents into Dockerfile:

```bash
FROM debian:wheezy

RUN apt-get update && apt-get install -y \
    cowsay \
    fortune

ENTRYPOINT ["/usr/games/cowsay"]
```

- `FROM`: specifies the base image to use.
- `RUN` : instructions specify a shell command to execute inside the image.
- `ENTRYPOINT` instruction specify an
executable that is used to handle any arguments passed to docker run.

## Working with Registries

There is a hierarchical system for storing images. The following terminology is used:

1. Registry: A service responsible for hosting and distributing images. The default registry is
the Docker Hub.

2. Repository: A collection of related images (usually providing different versions of the same
application or service).

3. Tag: An alphanumeric identifier attached to images within a repository (e.g., 14.04 or
stable).


- `docker pull repository_name/image_name:latest`: download the image tagged latest within the repository_name repository from the Docker Hub registry.

- `docker login` : to login to dockerhub registry
- `docker push` : to upload it to the Docker Hub.

## Managing Images
- `docker build` : Builds an image from a Dockerfile.
- `docker commit` : Creates an image from the specified container.
- `docker export` : Exports the contents of the container’s filesystem as a tar archive on STDOUT.
- `docker history` : Outputs information on each of the layers in an image.
- `docker images` :  Provides a list of local images, including information such as repository name.
- `docker import` : Creates an image from an archive file containing a filesystem.
- `docker load` : Loads a repository from a tar archive passed via STDIN.
- `docker rmi` : Deletes the given image or images.
- `docker save` : Saves the named images or repositories to a tar archive, tag name, and size. 
- `docker tag` : Associates a repository and tag name with an image.

## Managing Containers
- `docker attach [OPTIONS] CONTAINER` : attach command allows the user to view or interact with the main process inside the container.
- `docker create` : Creates a container from an image but does not start it.
- `docker cp` : Copies files and directories between a container and the host.
- `docker exec` : Runs a command inside a container.
- `docker kill` : Sends a signal to the main process (PID 1) in a container.
- `docker pause` : Suspends all processes inside the given container.
- `docker restart` : Restarts one or more containers.
- `docker rm` : Removes one or more containers.
- `docker start` : Starts a stopped container (or containers).
- `docker stop` : Stops (but does not remove) one or more containers.
- `docker unpause` : Restarts a container previously paused with docker pause.

## Containers Info
- `docker diff` : Shows changes made to the containers filesystem compared to the image it was
launched from.
- `docker events` : Prints real-time events from the daemon.
- `docker inspect` : Provides detailed information on given containers or images.
- `docker logs` : Outputs the “logs” for a container.
- `docker port` : Lists the exposed port mappings for the given container.
- `docker ps` : Provides high-level information on current containers.
- `docker top` : Provides information on the running processes inside a given container.

## Using the Registry
- `docker login` : Register with, or log in to, the given registry server.
- `docker logout` : Logs out from a Docker registry. If
- `docker pull` : Downloads the given image from a registry.
- `docker push` : Pushes an image or repository to the registry.
- `docker search` : Prints a list of public repositories on the Docker Hub matching the search term.