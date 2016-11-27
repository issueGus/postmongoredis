#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER excitedev;
    CREATE DATABASE excitedev;
    GRANT ALL PRIVILEGES ON DATABASE excitedev TO excitedev;
EOSQL