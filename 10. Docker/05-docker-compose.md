# Automating with Docker Compose

Docker Compose is designed to quickly get Docker development environments up and running. Essentially, it uses YAML files to store the configuration for sets of containers, saving developers from repetitive and error-prone typing or rolling thier own solution.

## The Compose Workflow
The following commands are commonly used when working with Compose.

- `docker-compose up -d` : Starts all the containers defined in the Compose file and aggregates the log out‐
put.

- `docker-compose up -d --build` : Rebuild and start


- `docker-compose build <service>` : Rebuilds any images created from Dockerfiles.

- `docker-compose ps` : Provides information on the status of containers managed by Compose.

- `docker-compose run` : Spins up a container to run a one-off command.

- `docker-compose logs -f` : Outputs colored and aggregated logs for the Compose-managed containers.

- `docker-compose down` : Stop all services

- `docker-compose down -v` : Stop and remove volumes (database data will be lost)

- `docker-compose stop` : Stops containers without removing them.

- `docker-compose rm`: Removes stopped containers.