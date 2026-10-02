# Environment setup

How the local PostgreSQL environment for this repo was built, and the problems found along the way.

## Overview

| Piece          | Role                                                         |
|----------------|--------------------------------------------------------------|
| PostgreSQL     | The database — where the data is stored                      |
| Docker         | Runs PostgreSQL inside an isolated container (no local install) |
| Docker Compose | Describes the container in a file (`docker-compose.yml`)     |
| DataGrip       | SQL client — where queries are written and results are shown |

## Steps

### 1. `docker-compose.yml`

The "recipe" Docker follows to build the container:

- `image: postgres:17` — which image (and version) to download
- `container_name` — the container's name
- `environment` — user, password and database, created **only on the first start**
- `ports: "5433:5432"` — host port `5433` maps to port `5432` inside the container
- `volumes` — where the data is persisted, so it survives `docker compose down`

### 2. Credentials in `.env`

Credentials live in a `.env` file (ignored by Git). `docker-compose.yml` only references them with `${POSTGRES_USER}`, `${POSTGRES_PASSWORD}` and `${POSTGRES_DB}`. Docker Compose reads `.env` automatically when it is in the same folder.

`.env.example` is the public template committed to the repo.

### 3. Start the container

```bash
docker compose up -d
```

Downloads the image, creates the container and starts it. `-d` runs it in the background.

### 4. Connect DataGrip

New Data Source → PostgreSQL → `localhost:5433` with the credentials from `.env`.

### 5. Test

```bash
docker ps
docker exec -it postgres-estudos psql -U <user> -d <database> -c "SELECT version();"
```

The output should show `PostgreSQL 17` running on Linux.

## Troubleshooting

| Problem | Cause | Fix |
|---|---|---|
| File saved as `docker-compose.yml.txt` | Windows hides file extensions | Enable *View → Show → File name extensions* and rename |
| `no configuration file provided: not found` | Terminal was not inside the project folder | `cd` into the folder that contains `docker-compose.yml` |
| Password authentication failed (error message in Portuguese) | A PostgreSQL installed on Windows was using port `5432` and answering instead of the container | Map the container to host port `5433` |
| Changed user/password in the compose file, but login still failed | PostgreSQL only reads these variables when the data volume is empty | `docker compose down -v` then `docker compose up -d` (**deletes all data**) |
