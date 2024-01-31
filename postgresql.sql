CREATE DATABASE tandoordb;
CREATE USER tandoor WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE tandoordb TO tandoor;
ALTER DATABASE tandoordb OWNER TO tandoor;

--Maybe not necessary, but should be faster:
ALTER ROLE tandoor SET client_encoding TO 'utf8';
ALTER ROLE tandoor SET default_transaction_isolation TO 'read committed';
ALTER ROLE tandoor SET timezone TO 'America/New_York';

--Grant superuser right to your new user, it will be removed later
ALTER USER tandoor WITH SUPERUSER;

CONNECT tandoordb;
CREATE EXTENSION pg_trgm;

-- ALTER USER tandoor WITHOUT SUPERUSER;