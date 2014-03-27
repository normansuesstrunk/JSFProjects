DROP TABLE IF EXISTS users; 
DROP TABLE IF EXISTS user_roles; 

DROP SEQUENCE IF EXISTS user_id_seq;

CREATE SEQUENCE user_id_seq;

CREATE TABLE users (
    id INTEGER NOT NULL default nextval('user_id_seq'),
    user_name VARCHAR(20) NOT NULL,
    user_pass VARCHAR(50) NOT NULL
);

INSERT INTO users (user_name, user_pass)
    VALUES ('admin', 'password');
    
CREATE TABLE user_roles (
  	user_name         VARCHAR(20) NOT NULL,
  	role_name         VARCHAR(20) NOT NULL,
  	primary key (user_name, role_name)
);

INSERT INTO user_roles (user_name, role_name)
    VALUES ('admin', 'ADMIN');