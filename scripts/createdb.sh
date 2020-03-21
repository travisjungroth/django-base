#!/bin/bash
set -e
read -rp 'Database Name: ' db_name
user_name="${db_name}_user"
read -rp 'Password: ' password
psql -c "CREATE DATABASE $db_name;"
psql -c "CREATE USER $user_name WITH PASSWORD '$password';"
psql -c "ALTER ROLE $user_name SET client_encoding TO 'utf8';"
psql -c "ALTER ROLE $user_name SET default_transaction_isolation TO 'read committed';"
psql -c "ALTER ROLE $user_name SET timezone TO 'UTC';"
psql -c "GRANT ALL PRIVILEGES ON DATABASE $db_name TO $user_name;"
psql -c "ALTER USER $user_name CREATEDB;"
echo "DATABASE_URL=postgres://$user_name:$password@localhost:5432/$db_name"
echo "Add the above line to .env"
