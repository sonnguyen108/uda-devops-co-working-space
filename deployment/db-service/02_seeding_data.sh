export DB_PASSWORD=password
export DB_HOST=127.0.0.1
export DB_USER=user
export DB_NAME=ha-app
PGPASSWORD="$DB_PASSWORD" psql --host $DB_HOST -U $DB_USER -d $DB_NAME -p 5433 < 1_create_table.sql
PGPASSWORD="$DB_PASSWORD" psql --host $DB_HOST -U $DB_USER -d $DB_NAME -p 5433 < 2_seed_users.sql
PGPASSWORD="$DB_PASSWORD" psql --host $DB_HOST -U $DB_USER -d $DB_NAME -p 5433 < 3_seed_tokens.sql
