export DB_PASSWORD=$1
PGPASSWORD="$DB_PASSWORD" psql --host 127.0.0.1 -U $2 -d $3 -p 5433
