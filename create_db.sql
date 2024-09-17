CREATE DATABASE auth_db;

CREATE TABLE users(
  id serial PRIMARY KEY,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  email text NOT NULL UNIQUE,
  firstname text NOT NULL,
  lastname text NOT NULL,
  password_hash text NOT NULL
);

