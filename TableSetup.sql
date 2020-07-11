DROP TABLE IF EXISTS crud_database.logs;
DROP TABLE IF EXISTS crud_database.util_log_types;
DROP TABLE IF EXISTS crud_database.users;



-- BEGIN Setup crud_database.util_log_types
CREATE TABLE crud_database.util_log_types (
    id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO crud_database.util_log_types (description)
VALUES
('DEBUG'),
('INFO'),
('ERROR');
-- END Setup crud_database.util_log_types



-- BEGIN Setup crud_database.logs
CREATE TABLE crud_database.logs (
    id INT NOT NULL AUTO_INCREMENT,
    log_type_id INT NOT NULL,
    description TEXT NOT NULL,
	log_date DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY (id),
    FOREIGN KEY (log_type_id) REFERENCES crud_database.util_log_types(id)
);
-- END Setup crud_database.logs



-- BEGIN Setup crud_database.users
CREATE TABLE crud_database.users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(50),
    first_name VARCHAR(25),
	last_name VARCHAR(25),
    PRIMARY KEY (id)
);
-- END Setup crud_database.logs
