-- must change your name and databasename, passward.
CREATE ROLE discuss LOGIN PASSWORD 'discuss_psql';
CREATE DATABASE discuss;
GRANT ALL PRIVILEGES ON DATABASE discuss TO discuss;
ALTER ROLE discuss WITH CREATEROLE CREATEDB SUPERUSER;
