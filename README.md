# WP Docker LAMP

A WordPress development environment using Docker.

## Requirements

You'll need the following installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup

1. Copy the `.env.sample` file and rename it `.env`.
2. Enter desired environment variables in the `.env` file. Make sure that the port number set in the `WP_URL` variable of the `.env` file matches the port number mapped in the `ports` section of the  `docker-compose.yml` file.
3. Start the Docker containers with `docker compose up`. Append a `-d` flag to run the containers in the background: `docker compose up -d`.
4. Enter the `php` container with `docker compose exec <php-container-name> bash`.
5. Verify the working directory is `/var/www`. 
6. Run the WordPress installation script: `sh install-wp.sh`.  A success message will display once the installation is complete.
7. In a browser, go to your WordPress installation at `http://localhost:<your-host-port>`.
8. To stop the Docker containers, run `docker compose down`.
