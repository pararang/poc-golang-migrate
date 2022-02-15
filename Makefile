
.PHONY: create-migration-fund create-migration-commerce migrate-fund migrate-commerce


# Create new migration file. takes parameter `file` as filename. 
# Usage: `make create-migration-fund file=create_table_user`
create-migration-fund: 
	migrate create -ext sql -dir migrations/fund -seq $(file)

# Create new migration file. takes parameter `file` as filename. 
# Usage: `make create-migration-commerce file=create_table_user`
create-migration-commerce: 
	migrate create -ext sql -dir migrations/commerce $(file)


# masih harus langsung ke terminal, masih error kalau pakai make
# ➜  go-migrate-poc git:(master) ✗ make migrate-commerce
# migrate -database postgres://developer:password@localhost:5432/poc?sslmode=disable&x-migrations-table=migrations_commerce -path migrations/commerce up
# /bin/sh: 1: x-migrations-table=migrations_commerce: not found

# migrate-commerce:
# 	migrate -database ${POSTGRESQL_URL_COMMERCE} -path migrations/commerce up
	
# migrate-fund:
# 	migrate -database ${POSTGRESQL_URL_FUND} -path migrations/fund up



