#!/bin/bash
set -e
db_name=$1
user_name="${db_name}_user"
password=$2
psql -c "CREATE DATABASE $db_name;"
psql -c "CREATE USER $user_name WITH PASSWORD '$password';"
psql -c "ALTER ROLE $user_name SET client_encoding TO 'utf8';"
psql -c "ALTER ROLE $user_name SET default_transaction_isolation TO 'read committed';"
psql -c "ALTER ROLE $user_name SET timezone TO 'UTC';"
psql -c "GRANT ALL PRIVILEGES ON DATABASE $db_name TO $user_name;"
psql -c "ALTER USER $user_name CREATEDB;"
