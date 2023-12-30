# SQLPage Call External Http Example (Postgresql)

This repo is a basic demo of how to call external APIs from [SQLPage](https://sql.ophir.dev/) using `PL/Python` in `Postgresql`.

# Usage

```sql

-- GET
SELECT ... FROM rest_get('https://....');


-- POST
SELECT ... FROM rest_post('https://....', '{...}'::json);
```

# Complete example

* `app/index.sql`: Usage
* `db_init/000_setup.sql`: Create utility functions
* `Dockerfile`: Basic Postgresql Image with python support
* `docker-compose.yml`: Complete setup

# Try

```bash
git clone https://github.com/mnesarco/sqlpage_rest_example.git
cd sqlpage_rest_example
docker compose up
```

After docker services are up and runnig, Go to http://localhost:8087