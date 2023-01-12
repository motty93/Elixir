-- must change your name and databasename, passward.
CREATE ROLE friends_repo LOGIN PASSWORD 'friends_repo_psql';
CREATE DATABASE friends_repo;
CREATE DATABASE friends_repo_test;
GRANT ALL PRIVILEGES ON DATABASE friends_repo TO friends_repo;
GRANT ALL PRIVILEGES ON DATABASE friends_repo_test TO friends_repo;
ALTER ROLE friends_repo WITH CREATEROLE CREATEDB SUPERUSER;
