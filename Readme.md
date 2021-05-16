# pg_monitor_comparisons


## setup

Start the servers by running the following (make sure you install docker first)
```
docker-compose up
```

First time setup? Enable `pg_stat_statements` with the following commands
```
docker exec -it pg_monitor_comparisons_postgres_1 sh -c "echo \"shared_preload_libraries = 'pg_stat_statements'\" >> /var/lib/postgresql/data/postgresql.conf" && \
  docker exec -it pg_monitor_comparisons_postgres_1 sh -c "echo \"pg_stat_statements.track = all\" >> /var/lib/postgresql/data/postgresql.conf" && \
  docker-compose down && docker-compose up
```

First time setup or looking at resetting the data? Setup the database and test data with the following after the server has started.

The information will be cached in the git ignored `./db` folder after every shutdown
```
docker exec -it pg_monitor_comparisons_sample_container_1 sh -c  "make init_db"
```

Viola, your database should be available now on `localhost:8080`

## shutdown

```
docker-compose down
```
