# Docker Compose for Monitoring & Application Services

This Docker Compose file sets up a monitoring stack using Grafana, Prometheus, Node Exporter, and Cadvisor, as well as an application stack with MariaDB and PHPMyAdmin.

## Prerequisites

- Docker engine and Docker Compose installed on your machine.

## Getting Started

1. Clone this repository to your local machine.
2. Open a terminal and navigate to the root directory of the cloned repository.
3. Create a `.env` file in the root directory and specify the required environment variables:

    ```
    VOL_MAIN_PATH=\path\to\volume\grafana-system-monitoring\ext_data
    MYSQL_ROOT_PASSWORD=root
    MYSQL_ROOT_HOST=%
    ```

- `VOL_MAIN_PATH`: Specify the path to the directory where you want to store the persistent data for Grafana, Prometheus, and Node Exporter.
- `MYSQL_ROOT_PASSWORD`: Set a secure password for the MariaDB root user.
- `MYSQL_ROOT_HOST`: Allow remote access to the MariaDB database by specifying the IP or hostname of the remote host. % allow all users to connecte to the database.

4. Run the following command to start the containers:

```
docker-compose up -d
```

This will start the Grafana, Prometheus, Node Exporter, Cadvisor, MariaDB, and PHPMyAdmin containers.

## Monitoring Services

- Grafana is accessible at `http://localhost:3030`. Use the default username (`admin`) and password (`admin`) to log in. You can customize Grafana's configuration by adding files to the `grafana/provisioning` directory.
- Prometheus is accessible at `http://localhost:9090`. You can configure Prometheus by modifying the `prometheus/config/prometheus.yml` file.
- Node Exporter provides metrics about the host machine and is automatically configured to scrape data from the host.

## Application Services

- MariaDB is accessible at `http://localhost:3306`. Use the specified `MYSQL_ROOT_PASSWORD` to log in.
- PHPMyAdmin is accessible at `http://localhost:8090`. Use the MariaDB container hostname (`mariadb`) and port (`3306`) to connect.

## Troubleshooting

- If any container fails to start, check the logs by running `docker-compose logs [service_name]` to see any error messages.
- Make sure that the specified directories for data volumes exist and are writable by the user running the containers.

## Cleaning Up

To stop and remove the containers, run:

```
docker-compose down
```

This will stop the containers and remove the associated networks and volumes.