DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS authorithies;

CREATE TABLE users(
	username VARCHAR(50) NOT NULL PRIMARY KEY,
	password VARCHAR(50) NOT NULL,
	enabled INT NOT NULL
);

INSERT INTO users VALUES
	('john','{noop}test123',1),
	('mary','{noop}test123',1),
	('susan','{noop}test123',1);
	
CREATE TABLE authorities(
	username VARCHAR(50) NOT NULL,
	authority VARCHAR(50) NOT NULL,
	UNIQUE(username,authority),
	CONSTRAINT authorities_ibfk_1 FOREIGN KEY (username) REFERENCES users (username)
);

INSERT INTO authorities VALUES
	('john','ROLE_EMPLOYEE'),
	('mary','ROLE_EMPLOYEE'),
	('mary','ROLE_MANAGER'),
	('susan','ROLE_EMPLOYEE'),
	('susan','ROLE_ADMIN');