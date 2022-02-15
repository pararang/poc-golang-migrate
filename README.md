[Golang Migrate](https://github.com/golang-migrate/migrate) version 4.15.1

### Prepare DB

```console
docker run -d --rm \
  --name migrate-pg \
  -e POSTGRES_DB=poc \        
  -e POSTGRES_USER=developer \
  -e POSTGRES_PASSWORD=password \
  -p 5432:5432 \
    postgres:12-alpine -c log_statement=all
```