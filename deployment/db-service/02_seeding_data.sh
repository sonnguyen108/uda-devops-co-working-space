export DB_PASSWORD=password
export DB_HOST=10.100.13.39
export DB_USER=user
export DB_NAME=ha-app
PGPASSWORD="$DB_PASSWORD" psql --host $DB_HOST -U $DB_USER -d $DB_NAME -p 5432 < ../../db/1_create_tables.sql
PGPASSWORD="$DB_PASSWORD" psql --host $DB_HOST -U $DB_USER -d $DB_NAME -p 5432 < ../../db/2_seed_users.sql
PGPASSWORD="$DB_PASSWORD" psql --host $DB_HOST -U $DB_USER -d $DB_NAME -p 5432 < ../../db/3_seed_tokens.sql
