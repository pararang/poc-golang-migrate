[Golang Migrate](https://github.com/golang-migrate/migrate) version 4.15.1

### Prepare DB Engine

```console
docker run -d --rm \
  --name migrate-pg \
  -e POSTGRES_DB=poc \        
  -e POSTGRES_USER=developer \
  -e POSTGRES_PASSWORD=password \
  -p 5432:5432 \
    postgres:12-alpine -c log_statement=all
```

### Prepare ENV Var
```console
source env.sh
```

### Create (Generate) Migration Files (Up and Down)
#### Fund
```console
make create-migration-fund file=create_table_farmer
```

#### Commerce
```console
make create-migration-commerce file=create_table_disburstment
```

### Execute Migration Script
#### Fund 
```console
migrate -database ${POSTGRESQL_URL_FUND} -path migrations/fund up
```

#### Commerce
```console
migrate -database ${POSTGRESQL_URL_COMMERCE} -path migrations/commerce up
```