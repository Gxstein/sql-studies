# Docker cheatsheet

Commands used in this repo. Run them from the project folder (where `docker-compose.yml` is).

## Daily use

| Command | What it does |
|---|---|
| `docker compose up -d` | Start the database in the background |
| `docker compose down` | Stop and remove the container (data is kept in the volume) |
| `docker ps` | List running containers and their ports |
| `docker compose logs postgres` | Show the database logs |

## Talking to PostgreSQL from the terminal

```bash
# Open an interactive psql session
docker exec -it postgres-estudos psql -U <user> -d <database>

# Run a single query
docker exec -it postgres-estudos psql -U <user> -d <database> -c "SELECT version();"
```

Useful commands inside `psql`:

| Command | What it does |
|---|---|
| `\dt` | List tables |
| `\d table_name` | Describe a table |
| `\q` | Quit |

## Careful

| Command | What it does |
|---|---|
| `docker compose down -v` | Stop the container **and delete the volume — all data is lost** |
| `docker compose config` | Print the final configuration with the `.env` values filled in (useful for debugging; it shows the password) |
