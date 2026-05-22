# Docker Network

Docker networking allows containers to communicate with each other, the host machine, and external networks. It provides isolation through network namespaces, ensuring each container has its own network stack while remaining portable across different

## Essential Commands

- **docker network ls**: List all available networks
- **docker network create `<name>`**: Create a new user-defined network
- **docker network inspect`<name>`** :View detailed info (IPs, connected containers)
- **docker network connect `<net>` `<cont>`**: Connect a running container to a network
- **docker network prune**: Remove all unused networks