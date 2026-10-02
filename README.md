# SQL Studies

Personal repository for learning **SQL** with **PostgreSQL**, running the database locally with **Docker Compose**.

## Stack

- PostgreSQL 17 (Docker image `postgres:17`)
- Docker Compose
- DataGrip as the SQL client

## Getting started

1. Copy the environment file and set your own credentials:

   ```bash
   cp .env.example .env
   ```

2. Start the database:

   ```bash
   docker compose up -d
   ```

3. Connect with any SQL client:

   | Setting  | Value                        |
   |----------|------------------------------|
   | Host     | `localhost`                  |
   | Port     | `5433`                       |
   | User     | value of `POSTGRES_USER`     |
   | Password | value of `POSTGRES_PASSWORD` |
   | Database | value of `POSTGRES_DB`       |

4. Stop the database (data is kept):

   ```bash
   docker compose down
   ```

> Port `5433` is used on the host because `5432` may already be taken by a local PostgreSQL installation.

## Project structure

```
sql-studies/
├── docker-compose.yml        # PostgreSQL container definition
├── .env.example              # Credentials template (copy to .env)
└── docs/
    ├── setup.md              # How the environment was built + troubleshooting
    └── docker-cheatsheet.md  # Docker commands used in this repo
```

## Progress

All topics use standard SQL commands supported by **PostgreSQL 17**.

- [x] Environment: PostgreSQL running with Docker Compose
- [x] 01 – Basics: `CREATE TABLE`, `INSERT`, `SELECT`, data types
- [ ] 02 – Filtering & sorting: `WHERE`, `AND` / `OR`, `BETWEEN`, `IN`, `LIKE`, `ORDER BY`, `LIMIT` / `OFFSET`
- [ ] 03 – Aggregations: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`, `HAVING`
- [ ] 04 – Joins: `INNER`, `LEFT`, `RIGHT`, `FULL`
- [ ] 05 – Subqueries: `IN`, `EXISTS`
- [ ] 06 – Constraints & keys: `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`, `CHECK`
- [ ] 07 – Changing data: `UPDATE`, `DELETE`
- [ ] 08 – Views & indexes: `CREATE VIEW`, `CREATE INDEX`
