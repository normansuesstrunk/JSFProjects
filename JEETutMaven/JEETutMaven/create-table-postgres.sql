DROP TABLE IF EXISTS users; 
DROP SEQUENCE user_id_seq; 

CREATE SEQUENCE user_id_seq;

CREATE TABLE users (
    id INTEGER NOT NULL default nextval('user_id_seq'),
    username VARCHAR(20) NOT NULL,
    password VARCHAR(50) NOT NULL
);

INSERT INTO users (username, password)
    VALUES ('admin', 'password');